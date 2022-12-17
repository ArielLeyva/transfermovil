import 'package:flutter/material.dart';

class IconList {

  static final _icons = <String, Widget> {
    "call_rounded": const Icon(Icons.call_rounded),
    "numbers_outlined": const Icon(Icons.numbers_outlined),
    "sms_rounded": const Icon(Icons.sms_rounded),
    "headset_mic_rounded": const Icon(Icons.headset_mic_rounded),
    "hearing": const Icon(Icons.hearing),
    "bpa_icon": const Icon(IconData(0xe902, fontFamily: "icomoon")),
    "bandec_icon": const Icon(IconData(0xe900, fontFamily: "icomoon")),
    "metropolitano_icon": const Icon(IconData(0xe901, fontFamily: "icomoon")),
    "fact_check": const Icon(Icons.fact_check),
    "switch_account_rounded": const Icon(Icons.switch_account_rounded),
    "dvr_rounded": const Icon(Icons.dvr_rounded),
    "feed_rounded": const Icon(Icons.feed_rounded),
    "attach_money_rounded": const Icon(Icons.attach_money_rounded),
    "electrical_services_rounded": const Icon(Icons.electrical_services_rounded),
    "format_list_numbered_rounded": const Icon(Icons.format_list_numbered_rounded),
    "warning_rounded": const Icon(Icons.warning_rounded),
    "wysiwyg_rounded": const Icon(Icons.wysiwyg_rounded),
    "mark_email_read_rounded": const Icon(Icons.mark_email_read_rounded),
    "not_listed_location_rounded": const Icon(Icons.not_listed_location_rounded),
    "compare_arrows_rounded": const Icon(Icons.compare_arrows_rounded),
    "local_police_rounded": const Icon(Icons.local_police_rounded),
    "credit_score_rounded": const Icon(Icons.credit_score_rounded),
    "ev_station_rounded": const Icon(Icons.ev_station_rounded),
    "account_balance_rounded": const Icon(Icons.account_balance_rounded),
    "credit_card_rounded": const Icon(Icons.credit_card_rounded),
    //"credit_card_rounded": const Icon(Icons.credit_card_rounded),
    "calculate_rounded": const Icon(Icons.calculate_rounded),
    "account_balance_wallet_rounded": const Icon(Icons.account_balance_wallet_rounded),
    "local_phone_rounded": const Icon(Icons.local_phone_rounded),
    "lightbulb": const Icon(Icons.lightbulb),
    "water_damage_rounded": const Icon(Icons.water_damage_rounded),
    "add_chart_rounded": const Icon(Icons.add_chart_rounded),
    "phone_android_rounded": const Icon(Icons.phone_android_rounded),
    "wifi_rounded": const Icon(Icons.wifi_rounded),
    "qr_code_scanner_rounded": const Icon(Icons.qr_code_scanner_rounded),
    "call_to_action_rounded": const Icon(Icons.call_to_action_rounded),
    "desktop_windows_rounded": const Icon(Icons.desktop_windows_rounded),
    "local_fire_department_rounded": const Icon(Icons.local_fire_department_rounded),
    "monetization_on_rounded": const Icon(Icons.monetization_on_rounded),
    "taxi_alert_rounded": const Icon(Icons.taxi_alert_rounded),
    "local_atm_rounded": const Icon(Icons.local_atm_rounded),
    "bolsa_mitransfer": const Icon(Icons.add_chart_rounded),
    "location_city_rounded": const Icon(Icons.location_city_rounded),
    "calendar_today_rounded": const Icon(Icons.calendar_today_rounded),
    "person_add_rounded": const Icon(Icons.person_add_rounded),
    "price_change_rounded": const Icon(Icons.price_change_rounded),
    "delete_forever_rounded": const Icon(Icons.delete_forever_rounded),
    "lock_rounded": const Icon(Icons.lock_rounded),
    "update_rounded": const Icon(Icons.update_rounded),
    "credit_card_off_rounded": const Icon(Icons.credit_card_off_rounded),
    "change_circle_rounded": const Icon(Icons.change_circle_rounded),
    "featured_play_list_rounded": const Icon(Icons.featured_play_list_rounded),
    "vpn_key_rounded": const Icon(Icons.vpn_key_rounded),
    "password_rounded": const Icon(Icons.password_rounded),
    "note_add_rounded": const Icon(Icons.note_add_rounded),
    "sticky_note_2_rounded": const Icon(Icons.sticky_note_2_rounded),
    "payment_rounded": const Icon(Icons.payment_rounded),
    "delete_sweep_rounded": const Icon(Icons.delete_sweep_rounded),
    "phone_forwarded_rounded": const Icon(Icons.phone_forwarded_rounded),
    "contact_phone": const Icon(Icons.contact_phone),
    "try_sms_star_rounded": const Icon(Icons.try_sms_star_rounded),
    "lte_plus_mobiledata_rounded": const Icon(Icons.lte_plus_mobiledata_rounded),
    "phonelink_ring_rounded": const Icon(Icons.phonelink_ring_rounded),
    "people_rounded": const Icon(Icons.people_rounded),
    "how_to_vote_rounded": const Icon(Icons.how_to_vote_rounded),
    "money_off_csred_rounded": const Icon(Icons.money_off_csred_rounded),
    "medical_services_rounded": const Icon(Icons.medical_services_rounded),
    "eleven_mp_rounded": const Icon(Icons.eleven_mp_rounded),
    "next_plan_rounded": const Icon(Icons.next_plan_rounded),
  };

  static Widget? get(String name) {
    return _icons[name];
  }
}