.class public final Ll/a;
.super Ljava/lang/Object;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/a$d;,
        Ll/a$b;,
        Ll/a$c;,
        Ll/a$e;
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Landroid/os/Handler;

.field c:Ll/a$d;

.field private d:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll/a$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ll/a$a;-><init>(Ll/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ll/a;->d:Landroid/os/Handler$Callback;

    .line 10
    .line 11
    new-instance v0, Ll/a$b;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ll/a$b;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ll/a;->a:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    new-instance p1, Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v0, p0, Ll/a;->d:Landroid/os/Handler$Callback;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ll/a;->b:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {}, Ll/a$d;->b()Ll/a$d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Ll/a;->c:Ll/a$d;

    .line 32
    .line 33
    return-void
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
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Ll/a$e;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Ll/a;->c:Ll/a$d;

    .line 4
    .line 5
    invoke-virtual {v0}, Ll/a$d;->c()Ll/a$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object p0, v0, Ll/a$c;->a:Ll/a;

    .line 10
    .line 11
    iput p1, v0, Ll/a$c;->c:I

    .line 12
    .line 13
    iput-object p2, v0, Ll/a$c;->b:Landroid/view/ViewGroup;

    .line 14
    .line 15
    iput-object p3, v0, Ll/a$c;->e:Ll/a$e;

    .line 16
    .line 17
    iget-object p1, p0, Ll/a;->c:Ll/a$d;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ll/a$d;->a(Ll/a$c;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string p2, "callback argument may not be null!"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
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
.end method
