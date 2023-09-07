.class public final Landroidx/core/text/d;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/d$f;,
        Landroidx/core/text/d$a;,
        Landroidx/core/text/d$b;,
        Landroidx/core/text/d$c;,
        Landroidx/core/text/d$e;,
        Landroidx/core/text/d$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/text/c;

.field public static final b:Landroidx/core/text/c;

.field public static final c:Landroidx/core/text/c;

.field public static final d:Landroidx/core/text/c;

.field public static final e:Landroidx/core/text/c;

.field public static final f:Landroidx/core/text/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/core/text/d$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/core/text/d$e;-><init>(Landroidx/core/text/d$c;Z)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/core/text/d;->a:Landroidx/core/text/c;

    .line 9
    .line 10
    new-instance v0, Landroidx/core/text/d$e;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, Landroidx/core/text/d$e;-><init>(Landroidx/core/text/d$c;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/core/text/d;->b:Landroidx/core/text/c;

    .line 17
    .line 18
    new-instance v0, Landroidx/core/text/d$e;

    .line 19
    .line 20
    sget-object v1, Landroidx/core/text/d$b;->a:Landroidx/core/text/d$b;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroidx/core/text/d$e;-><init>(Landroidx/core/text/d$c;Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/core/text/d;->c:Landroidx/core/text/c;

    .line 26
    .line 27
    new-instance v0, Landroidx/core/text/d$e;

    .line 28
    .line 29
    invoke-direct {v0, v1, v3}, Landroidx/core/text/d$e;-><init>(Landroidx/core/text/d$c;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/core/text/d;->d:Landroidx/core/text/c;

    .line 33
    .line 34
    new-instance v0, Landroidx/core/text/d$e;

    .line 35
    .line 36
    sget-object v1, Landroidx/core/text/d$a;->b:Landroidx/core/text/d$a;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroidx/core/text/d$e;-><init>(Landroidx/core/text/d$c;Z)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/core/text/d;->e:Landroidx/core/text/c;

    .line 42
    .line 43
    sget-object v0, Landroidx/core/text/d$f;->b:Landroidx/core/text/d$f;

    .line 44
    .line 45
    sput-object v0, Landroidx/core/text/d;->f:Landroidx/core/text/c;

    .line 46
    .line 47
    return-void
    .line 48
    .line 49
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

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
