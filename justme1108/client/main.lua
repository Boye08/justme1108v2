if Config.Love then 
    print('I LOVE justme1108')
    print('I LOVE justme1108')
    print('I LOVE justme1108')
    print('I LOVE justme1108')
    print('I LOVE justme1108')
    print('I LOVE justme1108')
else 
    print("Why don't you love justme1108?")
end

lib.registerContext({
    id = 'i_love_justme1108',
    title = 'Some context menu',
    options = {
      {
        title = 'Empty button',
      },
      {
        title = 'Disabled button',
        description = 'This button is disabled',
        icon = 'hand',
        disabled = true
      },
      {
        title = 'Spawn vehicle',
        description = 'ServerSide',
        icon = 'car',
        onSelect = function()
          print("You triggeret a server-event")
          TriggerServerEvent('vehicle')
        end,
        metadata = {
          {label = 'Value 1', value = 'Some value'},
          {label = 'Value 2', value = 300}
        },
      },
      {
        title = 'Menu button',
        description = 'Takes you to another menu!',
        menu = 'other_menu',
        icon = 'bars'
      },
      {
        title = 'Event button',
        description = 'Open a menu from the event and send event data',
        icon = 'check',
        event = 'test_event',
        arrow = true,
        args = {
          someValue = 500
        }
      }
    }
  })
---------------------------------------------------------------------------------------------------------------
RegisterCommand('testcontext', function()
    lib.showContext('i_love_justme1108')
  end)