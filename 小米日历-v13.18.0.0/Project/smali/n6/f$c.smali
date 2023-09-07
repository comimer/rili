.class Ln6/f$c;
.super Ljava/lang/Object;
.source "PassportJsbMethodGetSIMInfo.java"

# interfaces
.implements Lr6/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr6/a$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln6/f$c;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ln6/f$c;->b:[Ljava/lang/String;

    .line 7
    .line 8
    return-void
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
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln6/f$c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Li7/a;->a(Landroid/content/Context;)Li7/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ln6/f$c;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Ln6/f$c;->b:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "passportapi"

    .line 12
    .line 13
    invoke-interface {v0, v1, v3, v2}, Li7/c;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Lcom/xiaomi/passport/sim/SIMInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v2, v0

    .line 23
    const-string v3, "slotCount"

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    array-length v4, v0

    .line 31
    if-ge v3, v4, :cond_5

    .line 32
    .line 33
    aget-object v4, v0, v3

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    iget v6, v4, Lcom/xiaomi/passport/sim/SIMInfo;->slotIndex:I

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "slotIndex"

    .line 51
    .line 52
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget v7, v4, Lcom/xiaomi/passport/sim/SIMInfo;->subId:I

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v8, "subId"

    .line 63
    .line 64
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v7, v4, Lcom/xiaomi/passport/sim/SIMInfo;->mccmnc:Ljava/lang/String;

    .line 69
    .line 70
    const-string v8, "mccmnc"

    .line 71
    .line 72
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget-object v7, v4, Lcom/xiaomi/passport/sim/SIMInfo;->networkMCCMNC:Ljava/lang/String;

    .line 77
    .line 78
    const-string v8, "networkMCCMNC"

    .line 79
    .line 80
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-object v7, v4, Lcom/xiaomi/passport/sim/SIMInfo;->inService:Ljava/lang/Boolean;

    .line 85
    .line 86
    const-string v8, "inService"

    .line 87
    .line 88
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget-object v7, v4, Lcom/xiaomi/passport/sim/SIMInfo;->mobileDataEnable:Ljava/lang/Boolean;

    .line 93
    .line 94
    const-string v8, "mobileDataEnable"

    .line 95
    .line 96
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    iget-object v6, v4, Lcom/xiaomi/passport/sim/SIMInfo;->accountCert:Lcom/xiaomi/phonenum/data/AccountCertification;

    .line 100
    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    new-instance v6, Lorg/json/JSONObject;

    .line 104
    .line 105
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v7, v4, Lcom/xiaomi/passport/sim/SIMInfo;->accountCert:Lcom/xiaomi/phonenum/data/AccountCertification;

    .line 109
    .line 110
    iget-object v7, v7, Lcom/xiaomi/phonenum/data/AccountCertification;->activatorToken:Ljava/lang/String;

    .line 111
    .line 112
    const-string v8, "activatorToken"

    .line 113
    .line 114
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    iget-object v4, v4, Lcom/xiaomi/passport/sim/SIMInfo;->accountCert:Lcom/xiaomi/phonenum/data/AccountCertification;

    .line 118
    .line 119
    iget-object v4, v4, Lcom/xiaomi/phonenum/data/AccountCertification;->hashedPhoneNumber:Ljava/lang/String;

    .line 120
    .line 121
    const-string v7, "hashedPhone"

    .line 122
    .line 123
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Ln6/f$c;->b:[Ljava/lang/String;

    .line 127
    .line 128
    array-length v7, v4

    .line 129
    move v8, v2

    .line 130
    :goto_1
    if-ge v8, v7, :cond_4

    .line 131
    .line 132
    aget-object v9, v4, v8

    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 135
    .line 136
    .line 137
    const/4 v10, -0x1

    .line 138
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    sparse-switch v11, :sswitch_data_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :sswitch_0
    const-string v11, "activationAccountCert"

    .line 147
    .line 148
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-nez v11, :cond_1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_1
    const/4 v10, 0x2

    .line 156
    goto :goto_2

    .line 157
    :sswitch_1
    const-string v11, "operatorAccountCert"

    .line 158
    .line 159
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-nez v11, :cond_2

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    const/4 v10, 0x1

    .line 167
    goto :goto_2

    .line 168
    :sswitch_2
    const-string v11, "activationOrOperatorAccountCert"

    .line 169
    .line 170
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-nez v11, :cond_3

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    move v10, v2

    .line 178
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :pswitch_0
    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_5
    return-object v1

    .line 200
    nop

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x5eabbbac -> :sswitch_2
        0x463d1aad -> :sswitch_1
        0x7cb166fb -> :sswitch_0
    .end sparse-switch

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln6/f$c;->a()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
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
.end method
