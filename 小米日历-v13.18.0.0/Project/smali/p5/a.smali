.class public Lp5/a;
.super Ljava/lang/Object;
.source "PrivacyDataMaster.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "PrivacyDataMaster"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lp5/a;->a:Ljava/util/Map;

    .line 9
    .line 10
    :try_start_0
    new-instance v2, Lcom/xiaomi/account/privacy_data/oaid/OAIDGetter;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/xiaomi/account/privacy_data/oaid/OAIDGetter;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->OAID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string v1, "OAID privacy-data-getter not defined"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    :try_start_1
    new-instance v1, Lcom/xiaomi/account/privacy_data/android_id/AndroidIdGetter;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/android_id/AndroidIdGetter;-><init>()V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 34
    .line 35
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->ANDROID_ID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_1
    const-string v1, "ANDROID_ID privacy-data-getter not defined"

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_1
    :try_start_2
    new-instance v1, Lcom/xiaomi/account/privacy_data/device_id/DeviceIdGetter;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/device_id/DeviceIdGetter;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 54
    .line 55
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->DEVICE_ID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_2
    const-string v1, "device-id privacy-data-getter not defined"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_2
    :try_start_3
    new-instance v1, Lcom/xiaomi/account/privacy_data/miui_device_id/MiuiDeviceIdGetter;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/miui_device_id/MiuiDeviceIdGetter;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 74
    .line 75
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->MIUI_DEVICE_ID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catch_3
    const-string v1, "miui-device-id privacy-data-getter not defined"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :goto_3
    :try_start_4
    new-instance v1, Lcom/xiaomi/account/privacy_data/bluetooth_name/BluetoothNameGetter;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/bluetooth_name/BluetoothNameGetter;-><init>()V

    .line 91
    .line 92
    .line 93
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 94
    .line 95
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->BLUETOOTH_NAME:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_4

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catch_4
    const-string v1, "bluetooth-data bluetooth-name-getter not defined"

    .line 104
    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_4
    :try_start_5
    new-instance v1, Lcom/xiaomi/account/privacy_data/bluetooth_address/BluetoothAddressGetter;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/bluetooth_address/BluetoothAddressGetter;-><init>()V

    .line 111
    .line 112
    .line 113
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 114
    .line 115
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->BLUETOOTH_ADDRESS:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_5

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :catch_5
    const-string v1, "bluetooth-data bluetooth-address-getter not defined"

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :goto_5
    :try_start_6
    new-instance v1, Lcom/xiaomi/account/privacy_data/mac_address/MacAddressGetter;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/mac_address/MacAddressGetter;-><init>()V

    .line 131
    .line 132
    .line 133
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 134
    .line 135
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->MAC_ADDRESS:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 136
    .line 137
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_6

    .line 140
    .line 141
    .line 142
    goto :goto_6

    .line 143
    :catch_6
    const-string v1, "bluetooth-data mac-address-getter not defined"

    .line 144
    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_6
    :try_start_7
    new-instance v1, Lcom/xiaomi/account/privacy_data/ssid/SSIDGetter;

    .line 149
    .line 150
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/ssid/SSIDGetter;-><init>()V

    .line 151
    .line 152
    .line 153
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 154
    .line 155
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->SSID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 156
    .line 157
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_7

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :catch_7
    const-string v1, "bluetooth-data ssid-getter not defined"

    .line 164
    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :goto_7
    :try_start_8
    new-instance v1, Lcom/xiaomi/account/privacy_data/bssid/BSSIDGetter;

    .line 169
    .line 170
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/bssid/BSSIDGetter;-><init>()V

    .line 171
    .line 172
    .line 173
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 174
    .line 175
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->BSSID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 176
    .line 177
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_8

    .line 180
    .line 181
    .line 182
    goto :goto_8

    .line 183
    :catch_8
    const-string v1, "bluetooth-data bssid-getter not defined"

    .line 184
    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :goto_8
    :try_start_9
    new-instance v1, Lcom/xiaomi/account/privacy_data/configured_ssids/ConfiguredSSIDsGetter;

    .line 189
    .line 190
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/configured_ssids/ConfiguredSSIDsGetter;-><init>()V

    .line 191
    .line 192
    .line 193
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 194
    .line 195
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->CONFIGURED_SSIDS:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_9

    .line 200
    .line 201
    .line 202
    goto :goto_9

    .line 203
    :catch_9
    const-string v1, "bluetooth-data configured-ssids-getter not defined"

    .line 204
    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :goto_9
    :try_start_a
    new-instance v1, Lcom/xiaomi/account/privacy_data/iccid/ICCIDGetter;

    .line 209
    .line 210
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/iccid/ICCIDGetter;-><init>()V

    .line 211
    .line 212
    .line 213
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 214
    .line 215
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->ICCID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 216
    .line 217
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_a

    .line 220
    .line 221
    .line 222
    goto :goto_a

    .line 223
    :catch_a
    const-string v1, "bluetooth-data iccid-getter not defined"

    .line 224
    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :goto_a
    :try_start_b
    new-instance v1, Lcom/xiaomi/account/privacy_data/imsi/IMSIGetter;

    .line 229
    .line 230
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/imsi/IMSIGetter;-><init>()V

    .line 231
    .line 232
    .line 233
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 234
    .line 235
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->IMSI:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_b

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :catch_b
    const-string v1, "bluetooth-data imsi-getter not defined"

    .line 244
    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :goto_b
    :try_start_c
    new-instance v1, Lcom/xiaomi/account/privacy_data/line_1_number/Line1NumberGetter;

    .line 249
    .line 250
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/line_1_number/Line1NumberGetter;-><init>()V

    .line 251
    .line 252
    .line 253
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 254
    .line 255
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->LINE_1_NUMBER:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 256
    .line 257
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 258
    .line 259
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_c

    .line 260
    .line 261
    .line 262
    goto :goto_c

    .line 263
    :catch_c
    const-string v1, "bluetooth-data line-1-number-getter not defined"

    .line 264
    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :goto_c
    :try_start_d
    new-instance v1, Lcom/xiaomi/account/privacy_data/mccmnc/MCCMNCGetter;

    .line 269
    .line 270
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/mccmnc/MCCMNCGetter;-><init>()V

    .line 271
    .line 272
    .line 273
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 274
    .line 275
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->MCCMNC:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 276
    .line 277
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 278
    .line 279
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_d} :catch_d

    .line 280
    .line 281
    .line 282
    goto :goto_d

    .line 283
    :catch_d
    const-string v1, "bluetooth-data mccmnc-getter not defined"

    .line 284
    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    :goto_d
    :try_start_e
    new-instance v1, Lcom/xiaomi/account/privacy_data/network_mccmnc/NetworkMCCMNCGetter;

    .line 289
    .line 290
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/network_mccmnc/NetworkMCCMNCGetter;-><init>()V

    .line 291
    .line 292
    .line 293
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 294
    .line 295
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->NETWORK_MCCMNC:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 296
    .line 297
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 298
    .line 299
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_e} :catch_e

    .line 300
    .line 301
    .line 302
    goto :goto_e

    .line 303
    :catch_e
    const-string v1, "bluetooth-data network-mccmnc-getter not defined"

    .line 304
    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :goto_e
    :try_start_f
    new-instance v1, Lcom/xiaomi/account/privacy_data/sub_id/SubIdGetter;

    .line 309
    .line 310
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/sub_id/SubIdGetter;-><init>()V

    .line 311
    .line 312
    .line 313
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 314
    .line 315
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->SUB_ID:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 316
    .line 317
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 318
    .line 319
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_f .. :try_end_f} :catch_f

    .line 320
    .line 321
    .line 322
    goto :goto_f

    .line 323
    :catch_f
    const-string v1, "bluetooth-data sub-id-getter not defined"

    .line 324
    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :goto_f
    :try_start_10
    new-instance v1, Lcom/xiaomi/account/privacy_data/mobile_data_enable/MobileDataEnableGetter;

    .line 329
    .line 330
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/mobile_data_enable/MobileDataEnableGetter;-><init>()V

    .line 331
    .line 332
    .line 333
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 334
    .line 335
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->MOBILE_DATA_ENABLE:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 336
    .line 337
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_10 .. :try_end_10} :catch_10

    .line 340
    .line 341
    .line 342
    goto :goto_10

    .line 343
    :catch_10
    const-string v1, "bluetooth-data mobile-data-enable-getter not defined"

    .line 344
    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    :goto_10
    :try_start_11
    new-instance v1, Lcom/xiaomi/account/privacy_data/sim_in_service/SimInServiceGetter;

    .line 349
    .line 350
    invoke-direct {v1}, Lcom/xiaomi/account/privacy_data/sim_in_service/SimInServiceGetter;-><init>()V

    .line 351
    .line 352
    .line 353
    sget-object v2, Lp5/a;->a:Ljava/util/Map;

    .line 354
    .line 355
    sget-object v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->SIM_IN_SERVICE:Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;

    .line 356
    .line 357
    iget-object v3, v3, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 358
    .line 359
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_11} :catch_11

    .line 360
    .line 361
    .line 362
    goto :goto_11

    .line 363
    :catch_11
    const-string v1, "sim-in-service privacy-data-getter not defined"

    .line 364
    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    :goto_11
    return-void
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method public static varargs a(Landroid/content/Context;Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lp5/a;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public static varargs b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lp5/a;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lo5/a;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "PrivacyDataMaster"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p2, "no privacy data getter for type: "

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p2}, Lo5/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p0}, Lp5/a;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lcom/xiaomi/account/privacy_data/lib/PrivacyDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v0, "unknown error: get privacy data failed for type: "

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :catch_1
    move-exception p0

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v0, "get privacy data failed for type: "

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    return-object v1
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public static varargs c(Landroid/content/Context;Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/xiaomi/account/privacy_data/master/PrivacyDataType;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lp5/a;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method public static varargs d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lp5/a;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "PrivacyDataMaster"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p2, "read privacy data from local cache for type: "

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-static {p0, p1, p2}, Lp5/a;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "get privacy data success and cache for type: "

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    return-object p0
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method private static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    const-string v0, "com.xiaomi.account.privacy_data.master.data"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
