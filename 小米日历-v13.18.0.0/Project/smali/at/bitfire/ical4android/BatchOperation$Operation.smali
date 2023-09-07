.class public final Lat/bitfire/ical4android/BatchOperation$Operation;
.super Ljava/lang/Object;
.source "BatchOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/ical4android/BatchOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lat/bitfire/ical4android/BatchOperation$Operation;",
        "",
        "builder",
        "Landroid/content/ContentProviderOperation$Builder;",
        "backrefKey",
        "",
        "backrefIdx",
        "",
        "(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V",
        "getBackrefIdx",
        "()I",
        "getBackrefKey",
        "()Ljava/lang/String;",
        "getBuilder",
        "()Landroid/content/ContentProviderOperation$Builder;",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final backrefIdx:I

.field private final backrefKey:Ljava/lang/String;

.field private final builder:Landroid/content/ContentProviderOperation$Builder;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lat/bitfire/ical4android/BatchOperation$Operation;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 3
    iput-object p2, p0, Lat/bitfire/ical4android/BatchOperation$Operation;->backrefKey:Ljava/lang/String;

    .line 4
    iput p3, p0, Lat/bitfire/ical4android/BatchOperation$Operation;->backrefIdx:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;IILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, -0x1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lat/bitfire/ical4android/BatchOperation$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getBackrefIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lat/bitfire/ical4android/BatchOperation$Operation;->backrefIdx:I

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

.method public final getBackrefKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/BatchOperation$Operation;->backrefKey:Ljava/lang/String;

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

.method public final getBuilder()Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lat/bitfire/ical4android/BatchOperation$Operation;->builder:Landroid/content/ContentProviderOperation$Builder;

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
