.class public Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.super Ljava/lang/Object;
.source "MiLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ACCESS_DENIED:I = 0x7

.field public static final ERROR_CAPTCHA:I = 0x1

.field public static final ERROR_ILLEGAL_DEVICE_ID:I = 0x9

.field public static final ERROR_NEED_NOTIFICATION:I = 0x3

.field public static final ERROR_NEED_STEP2_LOGIN:I = 0x2

.field public static final ERROR_NETWORK:I = 0x5

.field public static final ERROR_PASSWORD:I = 0x4

.field public static final ERROR_REMOTE_FATAL_ERROR:I = 0xd

.field public static final ERROR_SERVER:I = 0x6

.field public static final ERROR_SSL:I = 0xa

.field public static final ERROR_SSL_HAND_SHAKE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_STEP2_CODE:I = 0xb

.field public static final ERROR_UNKNOWN:I = 0xc

.field public static final ERROR_USER_NAME:I = 0x8

.field private static final KEY_HAS_PWD:Ljava/lang/String; = "has_pwd"

.field private static final KEY_STS_ERROR:Ljava/lang/String; = "sts_error"

.field public static final SUCCESS:I


# instance fields
.field public final accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field public final captchaType:Ljava/lang/String;

.field public final captchaUrl:Ljava/lang/String;

.field public final hasPwd:Z

.field public isStsCallbackError:Z

.field public final metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field public final notificationUrl:Ljava/lang/String;

.field public final resultCode:I

.field public serverError:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

.field public final serviceId:Ljava/lang/String;

.field public final step1Token:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serviceId:Ljava/lang/String;

    .line 5
    const-class v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaType:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    .line 9
    const-class v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->step1Token:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->resultCode:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "has_pwd"

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->hasPwd:Z

    if-eqz v0, :cond_1

    const-string v1, "sts_error"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->isStsCallbackError:Z

    .line 15
    const-class v0, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serverError:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->a(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->b(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serviceId:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->e(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 20
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->f(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaUrl:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->g(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaType:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->h(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->i(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 24
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->j(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->step1Token:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->k(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->resultCode:I

    .line 26
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->l(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->hasPwd:Z

    .line 27
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->c(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->isStsCallbackError:Z

    .line 28
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;->d(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serverError:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;Lcom/xiaomi/accountsdk/account/data/MiLoginResult$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Lcom/xiaomi/accountsdk/account/data/MiLoginResult$b;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serviceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->accountInfo:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->captchaType:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->metaLoginData:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->step1Token:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->resultCode:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->hasPwd:Z

    .line 52
    .line 53
    const-string v2, "has_pwd"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->isStsCallbackError:Z

    .line 59
    .line 60
    const-string v2, "sts_error"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->serverError:Lcom/xiaomi/accountsdk/account/serverpassthrougherror/data/PassThroughErrorInfo;

    .line 69
    .line 70
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    .line 72
    .line 73
    return-void
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
