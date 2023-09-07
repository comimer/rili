.class public final Ly8/b;
.super Ljava/lang/Object;
.source "DurationJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\"\u001a\u0010\u0001\u001a\u00020\u00008\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "durationAssertionsEnabled",
        "Z",
        "a",
        "()Z",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:[Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ly8/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Ly8/b;->a:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v2, v1, [Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    .line 14
    .line 15
    .line 16
    aput-object v3, v2, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sput-object v2, Ly8/b;->b:[Ljava/lang/ThreadLocal;

    .line 22
    .line 23
    return-void
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public static final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Ly8/b;->a:Z

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
