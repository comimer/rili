.class public Lcom/market/sdk/ApkVerifyInfo;
.super Ljava/lang/Object;
.source "ApkVerifyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/ApkVerifyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CONNECTION_FAILED:I = 0x3

.field public static final STATUS_INCONSISTENT_CERTIFICATES:I = 0x2

.field public static final STATUS_NOT_INCLUDED:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OLDER:I = 0x1

.field public static final STATUS_PROCESSING:I = 0x6

.field public static final STATUS_RESULT_INVALID:I = 0x5


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mInstallerName:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mNeedFullScan:Z

.field public mNonce:J

.field public mPackageName:Ljava/lang/String;

.field public mStatus:I

.field public mTimeStamp:J

.field public mToken:Ljava/lang/String;

.field public mUpdateLog:Ljava/lang/String;

.field public mUpdateTime:J

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/market/sdk/ApkVerifyInfo$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/market/sdk/ApkVerifyInfo$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/market/sdk/ApkVerifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 6
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 7
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 8
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 9
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 18
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 19
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 20
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 21
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mToken:Ljava/lang/String;

    .line 26
    iput p1, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 32
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 33
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 34
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 35
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mToken:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/market/sdk/ApkVerifyInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public canReplaceByAppStore()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    return v1
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

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mIntent:Landroid/content/Intent;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    .line 61
    .line 62
    return-void
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
