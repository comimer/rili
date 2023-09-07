.class public Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.super Ljava/lang/Object;
.source "DeviceInfoResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;,
        Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final BUNDLE_KEY_HASHED_DEVICE_ID:Ljava/lang/String; = "hashed_device_id"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/service/DeviceInfoResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ANDROID_ID:I = 0x2

.field public static final FLAG_HASHED_DEVICE_ID:I = 0x1

.field private static final PARCEL_BUNDLE_KEY_DEVICE_INFO:Ljava/lang/String; = "device_info"

.field private static final PARCEL_BUNDLE_KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field private static final PARCEL_BUNDLE_KEY_ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field private static final PARCEL_BUNDLE_KEY_ERROR_STACK_TRACE:Ljava/lang/String; = "stacktrace"


# instance fields
.field public final deviceInfo:Landroid/os/Bundle;

.field public final errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

.field public final errorMessage:Ljava/lang/String;

.field public final errorStackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "device_info"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    const-string v0, "error_code"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->values()[Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    const-string v0, "error_message"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    const-string v0, "stacktrace"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorStackTrace:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    .line 4
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->b(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->c(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 6
    invoke-static {p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;->d(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorStackTrace:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;Lcom/xiaomi/accountsdk/service/DeviceInfoResult$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;-><init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$b;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v3, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    :goto_0
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    iget-object v3, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_6

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    iget-object v1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    :goto_1
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorStackTrace:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorStackTrace:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v1, :cond_7

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_8

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_7
    if-eqz p1, :cond_8

    .line 70
    .line 71
    :goto_2
    return v2

    .line 72
    :cond_8
    return v0
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

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorStackTrace:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :cond_3
    add-int/2addr v0, v1

    .line 49
    return v0
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
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->deviceInfo:Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v1, "device_info"

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorCode:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    const-string v1, "error_code"

    .line 24
    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorMessage:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "error_message"

    .line 31
    .line 32
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->errorStackTrace:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "stacktrace"

    .line 38
    .line 39
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void
    .line 46
    .line 47
.end method
