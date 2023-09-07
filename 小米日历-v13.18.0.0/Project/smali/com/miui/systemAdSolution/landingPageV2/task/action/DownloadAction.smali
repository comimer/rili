.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;
.super Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.source "DownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;,
        Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
        "Le5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_SOURCE_DEFAULT:I = 0x3

.field public static final DOWNLOAD_SOURCE_MIMARKET:I = 0x1

.field public static final DOWNLOAD_SOURCE_NATIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DownloadAction"


# instance fields
.field private mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;

.field private mDownloadSource:I

.field private mIsDownloadAutoStart:Z

.field private mIsDownloadByMiniCard:Z

.field private mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Landroid/os/Parcel;)V

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->getRealOrFakePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseIntToBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseIntToBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseMiniCardConfig(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseDownloadInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DownloadAction"

    const-string v1, "DownloadAction parse parcel e : "

    .line 10
    invoke-static {v0, v1, p1}, Ld6/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;Le5/b;ZLjava/lang/String;IZZLcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
            "Le5/b;",
            ">.a;",
            "Le5/b;",
            "Z",
            "Ljava/lang/String;",
            "IZZ",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;Landroid/os/IInterface;Z)V

    if-eqz p8, :cond_0

    if-nez p9, :cond_1

    :cond_0
    const-string p1, "DownloadAction"

    const-string p2, "config info can\'t be null"

    .line 12
    invoke-static {p1, p2}, Ld6/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    iput-object p4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    .line 14
    iput p5, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    .line 15
    iput-boolean p6, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    .line 16
    iput-boolean p7, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    .line 17
    iput-object p8, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

    .line 18
    iput-object p9, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;

    return-void
.end method

.method private static getRealOrFakePackageName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FAKE_PACKAGE:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "generate fake packageName["

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "]"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "DownloadAction"

    .line 53
    .line 54
    invoke-static {v2, v1}, Ld6/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0
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

.method private final parseDownloadInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;
    .locals 2

    .line 1
    const-string v0, "DownloadAction"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "parse DownloadInfo e : "

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Ld6/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
    .line 20
    .line 21
    .line 22
.end method

.method private final parseMiniCardConfig(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;
    .locals 2

    .line 1
    const-string v0, "DownloadAction"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "parse MiniCardConfig e : "

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Ld6/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActionType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getDownloadInfo()Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
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

.method public getDownloadSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
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

.method public getMiniCardConfig()Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
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

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
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

.method public isDownloadAutoStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
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

.method public isIsDownloadByMiniCard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
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

.method protected bridge synthetic readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->readBinder(Landroid/os/IBinder;)Le5/b;

    move-result-object p1

    return-object p1
.end method

.method protected readBinder(Landroid/os/IBinder;)Le5/b;
    .locals 0

    .line 2
    invoke-static {p1}, Le5/b$a;->n0(Landroid/os/IBinder;)Le5/b;

    move-result-object p1

    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseBooleanToInt(Z)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    iget-boolean p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseBooleanToInt(Z)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$b;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;->serialize()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$a;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;->serialize()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
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
