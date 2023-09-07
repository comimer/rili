.class public Lcom/market/sdk/homeguide/HomeUserGuideResult;
.super Lcom/market/sdk/AbsParcelable;
.source "HomeUserGuideResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/homeguide/HomeUserGuideResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_INVALID_HOME_SCREEN:I = 0x1

.field public static final ERROR_INVALID_ICON_POS:I = 0x2

.field public static final OK:I


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/market/sdk/homeguide/HomeUserGuideResult$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/market/sdk/homeguide/HomeUserGuideResult$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/market/sdk/AbsParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/market/sdk/AbsParcelable;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    return-void
.end method

.method public static of(I)Lcom/market/sdk/homeguide/HomeUserGuideResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/market/sdk/homeguide/HomeUserGuideResult;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/market/sdk/homeguide/HomeUserGuideResult;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/market/sdk/AbsParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    return-void
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
