#include "include/multi_sender_pinput/multi_sender_pinput_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "multi_sender_pinput_plugin.h"

void MultiSenderPinputPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  multi_sender_pinput::MultiSenderPinputPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
