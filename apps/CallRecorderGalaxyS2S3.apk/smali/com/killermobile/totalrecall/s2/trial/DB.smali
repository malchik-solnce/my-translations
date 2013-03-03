.class public interface abstract Lcom/killermobile/totalrecall/s2/trial/DB;
.super Ljava/lang/Object;
.source "DB.java"


# static fields
.field public static final COLUMN_GLOBAL_SETTINGS_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_GLOBAL_SETTINGS_VALUE:Ljava/lang/String; = "value"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_RECORDS_LIBRARY_BROKEN:Ljava/lang/String; = "broken"

.field public static final COLUMN_RECORDS_LIBRARY_CALL_TYPE:Ljava/lang/String; = "call_type"

.field public static final COLUMN_RECORDS_LIBRARY_CHECKSUM:Ljava/lang/String; = "checksum"

.field public static final COLUMN_RECORDS_LIBRARY_CID:Ljava/lang/String; = "cid"

.field public static final COLUMN_RECORDS_LIBRARY_CREATED:Ljava/lang/String; = "created"

.field public static final COLUMN_RECORDS_LIBRARY_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_RECORDS_LIBRARY_FORMAT:Ljava/lang/String; = "format"

.field public static final COLUMN_RECORDS_LIBRARY_PATH:Ljava/lang/String; = "path"

.field public static final COLUMN_RECORDS_LIBRARY_PHONE:Ljava/lang/String; = "phone"

.field public static final CREATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS "

.field public static final DATABASE:Ljava/lang/String; = "totalrecall.db"

.field public static final END_TABLE:Ljava/lang/String; = ");"

.field public static final GLOBAL_SETTINGS_KEY_AUDIO_FORMAT:Ljava/lang/String; = "audio_format"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_EVERNOTE_UPLOAD_ENABLED:Ljava/lang/String; = "auto_evernote_upload_enabled"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_MAIL_UPLOAD_ENABLED:Ljava/lang/String; = "auto_mail_upload_enabled"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_MAIL_UPLOAD_PASSWORD:Ljava/lang/String; = "auto_mail_upload_password"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_MAIL_UPLOAD_RECIPIENT:Ljava/lang/String; = "auto_mail_upload_recipient"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_MAIL_UPLOAD_USERNAME:Ljava/lang/String; = "auto_mail_upload_username"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_RESET_SERVICE:Ljava/lang/String; = "auto_reset_service"

.field public static final GLOBAL_SETTINGS_KEY_AUTO_START:Ljava/lang/String; = "auto_start"

.field public static final GLOBAL_SETTINGS_KEY_CALLS:Ljava/lang/String; = "calls"

.field public static final GLOBAL_SETTINGS_KEY_DELETE_FILE_AFTER_GMAIL_EVERNOTE_UPLOAD:Ljava/lang/String; = "delete_file_after_gmail_evernote_upload"

.field public static final GLOBAL_SETTINGS_KEY_DESTINATION:Ljava/lang/String; = "destination"

.field public static final GLOBAL_SETTINGS_KEY_DICT_AUTO_START_BOOL:Ljava/lang/String; = "dict_auto_start_bool"

.field public static final GLOBAL_SETTINGS_KEY_DICT_AUTO_STOP_BOOL:Ljava/lang/String; = "dict_auto_stop_bool"

.field public static final GLOBAL_SETTINGS_KEY_DICT_NOTIFICATION_BOOL:Ljava/lang/String; = "dict_notification_bool"

.field public static final GLOBAL_SETTINGS_KEY_DONT_RECORD_WITH_BT_HEADSET:Ljava/lang/String; = "dont_record_with_bt_headset"

.field public static final GLOBAL_SETTINGS_KEY_EULA_ACCEPTED:Ljava/lang/String; = "eula_accepted"

.field public static final GLOBAL_SETTINGS_KEY_EXPIRATION:Ljava/lang/String; = "expiration_time"

.field public static final GLOBAL_SETTINGS_KEY_FONT:Ljava/lang/String; = "font"

.field public static final GLOBAL_SETTINGS_KEY_HIDE_RECORDING_STRATEGY_DLG_BOOL:Ljava/lang/String; = "hide_recording_strategy_dlg_bool"

.field public static final GLOBAL_SETTINGS_KEY_LAST_MEANINGFUL_CALLS:Ljava/lang/String; = "last_meaningful_calls"

.field public static final GLOBAL_SETTINGS_KEY_MANUAL_RECORDING_NOTIF:Ljava/lang/String; = "manual_recording_notif"

.field public static final GLOBAL_SETTINGS_KEY_MAX_DURATION:Ljava/lang/String; = "max_duration"

.field public static final GLOBAL_SETTINGS_KEY_MAX_DURATION_ENABLED:Ljava/lang/String; = "max_duration_enabled"

.field public static final GLOBAL_SETTINGS_KEY_MAX_SIZE:Ljava/lang/String; = "max_size"

.field public static final GLOBAL_SETTINGS_KEY_MAX_SIZE_ENABLED:Ljava/lang/String; = "max_size_enabled"

.field public static final GLOBAL_SETTINGS_KEY_MIN_DURATION:Ljava/lang/String; = "min_duration"

.field public static final GLOBAL_SETTINGS_KEY_MIN_DURATION_ENABLED:Ljava/lang/String; = "min_duration_enabled"

.field public static final GLOBAL_SETTINGS_KEY_NEXT_TEST_NUMBER:Ljava/lang/String; = "next_test_number"

.field public static final GLOBAL_SETTINGS_KEY_PASS_RECOVERY_MAIL:Ljava/lang/String; = "pass_recovery_mail"

.field public static final GLOBAL_SETTINGS_KEY_PROMPT:Ljava/lang/String; = "prompt"

.field public static final GLOBAL_SETTINGS_KEY_RECORDER_AUDIO_SOURCE:Ljava/lang/String; = "recorder_audio_source"

.field public static final GLOBAL_SETTINGS_KEY_RECORDING_NUMBERS_APPLY_FOR:Ljava/lang/String; = "recording_numbers_apply_for"

.field public static final GLOBAL_SETTINGS_KEY_RECORDING_NUMBERS_JSON:Ljava/lang/String; = "recording_numbers_json"

.field public static final GLOBAL_SETTINGS_KEY_RECORDING_NUMBERS_RECORD_SELECTED:Ljava/lang/String; = "recording_numbers_record_selected"

.field public static final GLOBAL_SETTINGS_KEY_RECORDING_WAKE_LOCK_BOOL:Ljava/lang/String; = "recording_wake_lock_bool"

.field public static final GLOBAL_SETTINGS_KEY_RECORDS_LIST_SORT_ORDER:Ljava/lang/String; = "records_list_sort_order"

.field public static final GLOBAL_SETTINGS_KEY_RECORD_AFTER_START_CALL_BOOL:Ljava/lang/String; = "recording_after_start_call_bool"

.field public static final GLOBAL_SETTINGS_KEY_RECORD_VIA_SMS_ENABLED:Ljava/lang/String; = "bool_record_via_sms"

.field public static final GLOBAL_SETTINGS_KEY_ROOT_NICE_VALUE:Ljava/lang/String; = "root_nice_value"

.field public static final GLOBAL_SETTINGS_KEY_SMS_NOTIFICATION_ENABLED:Ljava/lang/String; = "sms_notification_enabled"

.field public static final GLOBAL_SETTINGS_KEY_SMS_PASSWORD:Ljava/lang/String; = "sms_password"

.field public static final GLOBAL_SETTINGS_KEY_SMS_PASSWORD_ENABLED:Ljava/lang/String; = "sms_password_enabled"

.field public static final GLOBAL_SETTINGS_KEY_SPEAKER_PHONE_BOOL:Ljava/lang/String; = "speaker_phone_bool"

.field public static final GLOBAL_SETTINGS_KEY_STATUS_BAR_HIDED:Ljava/lang/String; = "status_bar_hided"

.field public static final GLOBAL_SETTINGS_KEY_STREAM_SOLO_BOOL:Ljava/lang/String; = "recording_stream_solo_bool"

.field public static final GLOBAL_SETTINGS_KEY_TEST_NUMBER:Ljava/lang/String; = "test_number"

.field public static final GLOBAL_SETTINGS_KEY_TEST_RESULTS:Ljava/lang/String; = "test_results"

.field public static final GLOBAL_SETTINGS_KEY_THEME:Ljava/lang/String; = "theme"

.field public static final GLOBAL_SETTINGS_KEY_TOASTS_ALLOWED:Ljava/lang/String; = "toasts_allowed"

.field public static final GLOBAL_SETTINGS_KEY_USE_CONTACT_NAME_FOR_RECORD:Ljava/lang/String; = "use_contact_name_for_record"

.field public static final GLOBAL_SETTINGS_KEY_USE_DATE_FOR_RECORD:Ljava/lang/String; = "use_date_for_record"

.field public static final GLOBAL_SETTINGS_KEY_USE_TIME_FOR_RECORD:Ljava/lang/String; = "use_time_for_record"

.field public static final GLOBAL_SETTINGS_KEY_VIBRATION_DURATION:Ljava/lang/String; = "vibration_duration"

.field public static final SEPARATE_COLUMN:Ljava/lang/String; = ", "

.field public static final START_TABLE:Ljava/lang/String; = " ("

.field public static final TABLE_GLOBAL_SETTINGS:Ljava/lang/String; = "global_settings"

.field public static final TABLE_RECORDS_LIBRARY:Ljava/lang/String; = "records_library"

.field public static final TYPE_ID:Ljava/lang/String; = " INTEGER PRIMARY KEY AUTOINCREMENT"

.field public static final TYPE_TEXT:Ljava/lang/String; = " TEXT"
