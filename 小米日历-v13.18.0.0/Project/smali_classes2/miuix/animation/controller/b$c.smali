.class Lmiuix/animation/controller/b$c;
.super Lg9/b;
.source "FolmeBlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/b;->X(Ld9/a;)Lmiuix/animation/IBlinkStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/animation/controller/b;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/b$c;->a:Lmiuix/animation/controller/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lg9/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lg9/b;->onComplete(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lmiuix/animation/controller/b$c;->a:Lmiuix/animation/controller/b;

    .line 5
    .line 6
    iget v0, p1, Lmiuix/animation/controller/b;->h:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput v0, p1, Lmiuix/animation/controller/b;->h:I

    .line 11
    .line 12
    iget-object p1, p1, Lmiuix/animation/controller/a;->a:Le9/c;

    .line 13
    .line 14
    invoke-interface {p1}, Le9/c;->getTarget()Lmiuix/animation/b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lmiuix/animation/b;->getTargetObject()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lmiuix/animation/controller/b$c;->a:Lmiuix/animation/controller/b;

    .line 23
    .line 24
    iget v1, v0, Lmiuix/animation/controller/b;->h:I

    .line 25
    .line 26
    invoke-static {v0}, Lmiuix/animation/controller/b;->U(Lmiuix/animation/controller/b;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eq v1, v0, :cond_1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/b$c;->a:Lmiuix/animation/controller/b;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ld9/a;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lmiuix/animation/controller/b;->Y([Ld9/a;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
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
.end method
