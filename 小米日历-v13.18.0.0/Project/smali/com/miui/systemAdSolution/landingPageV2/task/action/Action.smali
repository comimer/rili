.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Action"


# instance fields
.field protected mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field protected mIsForwardWhenSuccess:Z

.field protected mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseAdTrackInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseIntToBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;Landroid/os/IInterface;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
            "TT;>.a;TT;Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    .line 9
    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;

    .line 10
    iput-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    .line 11
    iput-boolean p3, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdTracKInfo()Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
            "TT;>.a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;

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

.method public getIsForwardWhenSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

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

.method public getListener()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

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

.method protected final parseAdTrackInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action<",
            "TT;>.a;"
        }
    .end annotation

    .line 1
    const-string v0, "Action"

    .line 2
    .line 3
    :try_start_0
    const-class v1, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v1, "parseAdTrackInfo e : "

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

.method protected parseBooleanToInt(Z)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected parseIntToBoolean(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$a;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;->serialize()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseBooleanToInt(Z)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    return-void
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
