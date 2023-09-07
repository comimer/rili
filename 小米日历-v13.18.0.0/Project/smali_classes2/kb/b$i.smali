.class Lkb/b$i;
.super Lkb/d;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lkb/b;


# direct methods
.method private constructor <init>(Lkb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/b$i;->a:Lkb/b;

    invoke-direct {p0}, Lkb/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkb/b;Lkb/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkb/b$i;-><init>(Lkb/b;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-eq p2, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    if-ne p2, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lkb/b$i;->a:Lkb/b;

    .line 10
    .line 11
    iget-object p2, p1, Lkb/b;->P:Lkb/b$l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lkb/b;->U0(Lkb/d;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
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
.end method
