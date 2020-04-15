DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // HUB1 (8086_9ca6)
            "HUB1", Package()
            {
                "port-count", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "PR01", Package()
                      {
                          "portType", 0,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                      },
                },
            },
            // XHC (8086_9cb1)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS06", Package()
                      {
                          "UsbConnector", 0,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                      },
                      "HS04", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                      },
                      "HS02", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x02, 0x00, 0x00, 0x00 },
                      },
                      "HS08", Package()
                      {
                          "UsbConnector", 0,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                      },
                      "HS05", Package()
                      {
                          "UsbConnector", 0,
                          "port", Buffer() { 0x05, 0x00, 0x00, 0x00 },
                      },
                      "HS01", Package()
                      {
                          "UsbConnector", 3,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                      },
                },
            },
        })
    }
}
