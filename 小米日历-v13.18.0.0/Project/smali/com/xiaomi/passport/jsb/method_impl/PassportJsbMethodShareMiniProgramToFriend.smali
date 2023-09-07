.class public Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;
.super Lcom/xiaomi/passport/jsb/ParcelablePassportJsbMethod;
.source "PassportJsbMethodShareMiniProgramToFriend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/passport/jsb/ParcelablePassportJsbMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PassportJsbMethodShareMiniProgramToFriend"

.field public static final WEIXIN_SHARE_RESULT:Ljava/lang/String; = "wei_xin_share_result"

.field public static final WEIXIN_SHARE_RESULT_ERR_CODE:Ljava/lang/String; = "wei_xin_share_result_err_code"

.field public static final WEIXIN_SHARE_RESULT_ERR_STR:Ljava/lang/String; = "wei_xin_share_result_err_str"


# instance fields
.field private mPassportWXAPIEventHandler:Lp6/a;

.field private mShareResultBroadcastReceiver:Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;

.field private mWeiXinAppID:Ljava/lang/String;

.field private mWeixinShareTool:Lo6/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->CREATOR:Landroid/os/Parcelable$Creator;

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
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/passport/jsb/ParcelablePassportJsbMethod;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeiXinAppID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/jsb/ParcelablePassportJsbMethod;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeiXinAppID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "shareMiniProgramToFriend"

    return-object v0
.end method

.method public invoke(Lcom/xiaomi/passport/webview/a;Lorg/json/JSONObject;)Lm6/d;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeixinShareTool:Lo6/a;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lo6/a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeiXinAppID:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v1, v0, v2}, Lo6/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeixinShareTool:Lo6/a;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mPassportWXAPIEventHandler:Lp6/a;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lp6/a;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lp6/a;-><init>(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mPassportWXAPIEventHandler:Lp6/a;

    .line 30
    .line 31
    sput-object v1, Lp6/c;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    .line 32
    .line 33
    :cond_1
    const-string v0, "mediaMessageJson"

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    new-instance p1, Lm6/d;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p1, p2}, Lm6/d;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    const-string v1, "callbackId"

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-object v1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeixinShareTool:Lo6/a;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    const-string v3, "WXMiniProgramObject"

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3, v0}, Lo6/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mShareResultBroadcastReceiver:Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    new-instance v0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mShareResultBroadcastReceiver:Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;

    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mShareResultBroadcastReceiver:Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;

    .line 82
    .line 83
    invoke-virtual {v0, p2, p1}, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;->a(Ljava/lang/String;Lcom/xiaomi/passport/webview/a;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lm6/d;

    .line 87
    .line 88
    invoke-direct {p1, v2}, Lm6/d;-><init>(Z)V

    .line 89
    .line 90
    .line 91
    return-object p1
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public release(Lcom/xiaomi/passport/webview/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mShareResultBroadcastReceiver:Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend$b;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mPassportWXAPIEventHandler:Lp6/a;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    sput-object p1, Lp6/c;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    .line 14
    .line 15
    :cond_1
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/xiaomi/passport/jsb/method_impl/PassportJsbMethodShareMiniProgramToFriend;->mWeiXinAppID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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
