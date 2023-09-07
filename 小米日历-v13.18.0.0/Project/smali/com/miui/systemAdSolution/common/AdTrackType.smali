.class public Lcom/miui/systemAdSolution/common/AdTrackType;
.super Ljava/lang/Object;
.source "AdTrackType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/common/AdTrackType$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/systemAdSolution/common/AdTrackType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AdTrackType"


# instance fields
.field private mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemAdSolution/common/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/systemAdSolution/common/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->values()[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->values()[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    sget-object v0, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_UNKOWN:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    iput-object v0, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not support."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdTrackType"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/miui/systemAdSolution/common/AdTrackType$Type;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Lcom/miui/systemAdSolution/common/AdTrackType$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    return-void
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
