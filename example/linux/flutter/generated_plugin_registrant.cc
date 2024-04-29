//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <multi_sender_pinput/multi_sender_pinput_plugin.h>
#include <smart_auth/smart_auth_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) multi_sender_pinput_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MultiSenderPinputPlugin");
  multi_sender_pinput_plugin_register_with_registrar(multi_sender_pinput_registrar);
  g_autoptr(FlPluginRegistrar) smart_auth_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SmartAuthPlugin");
  smart_auth_plugin_register_with_registrar(smart_auth_registrar);
}
