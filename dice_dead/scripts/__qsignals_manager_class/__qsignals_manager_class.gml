/// feather ignore all

/// @desc Signal Manager class is meant to be private. It is used by QSignals functions.
function __QSignalManager() constructor
{
	static _current_room = room;
	
	static signal_map = ds_map_create();	
	
	static AddListener = function(_instance_id, _signal_identifier, _callback)
	{
		if (room != _current_room)
		{
			// Clera the map on room change
			ds_map_clear(signal_map);
			_current_room = room;
		}
		
		if (!ds_map_exists(signal_map, _signal_identifier))
		{
			__QSignalManager.signal_map[? _signal_identifier] = ds_list_create();
		}

		// If the calling instance already has a callback for this signal, overwrite it.
		var _listener_list = signal_map[? _signal_identifier];
		for (var _i = 0; _i < ds_list_size(_listener_list); _i++)
		{
			var _listener = _listener_list[| _i]; 
			if (_listener.instance == _instance_id)
			{
				_listener.callback = _callback;
				return;
			}
		}
		
		// If the instance wasn't found in the list, add it.
		ds_list_add(signal_map[?  _signal_identifier], { instance: _instance_id, callback: _callback });
	}
	
	static RemoveListener = function (_instance_id, _signal_identifier)
	{
		if (room != _current_room)
		{
			// Clera the map on room change
			ds_map_clear(signal_map);
			_current_room = room;
		}
		
		if (!ds_map_exists(signal_map, _signal_identifier))
		{
			return;
		}

		// If delete the listener from the list if found.
		var _listener_list = signal_map[? _signal_identifier];
		for (var _i = 0; _i < ds_list_size(_listener_list); _i++)
		{
			var _listener = _listener_list[| _i]; 
			if (_listener.instance == _instance_id)
			{
				ds_list_delete(_listener_list, _i);
				return;
			}
		}
		
	}
	
	static EmitSignal = function(_signal_identifier, _params)
	{
		if (room != _current_room)
		{
			// Clear the map on room change
			ds_map_clear(signal_map);
			_current_room = room;
		}
		
		var _listener_list = signal_map[? _signal_identifier];

		if (_listener_list != undefined)
		{
			for (var _i = 0; _i < ds_list_size(_listener_list); _i++)
			{
				var _item = _listener_list[| _i];
				
				if (!instance_exists(_item.instance))
				{
					ds_list_delete(_listener_list, _i--);
					continue;
				}
				
				if (!is_callable(_item.callback))
				{
					show_debug_message($"[QSignal Error] A signal is registered with an uncallable function. Signal - {_signal_identifier}");
					ds_list_delete(_listener_list, _i--);
					continue;
				}
				
				_item.callback(_params);
			}
		}
	}
}