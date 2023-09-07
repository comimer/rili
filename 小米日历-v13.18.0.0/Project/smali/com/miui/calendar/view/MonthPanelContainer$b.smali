.class final Lcom/miui/calendar/view/MonthPanelContainer$b;
.super Ljava/lang/Object;
.source "MonthPanelContainer.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/view/MonthPanelContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/miui/calendar/view/MonthPanelContainer$b;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "Lcom/android/calendar/homepage/j1;",
        "a",
        "Lcom/android/calendar/homepage/j1;",
        "mView",
        "",
        "b",
        "I",
        "mInitialEventY",
        "c",
        "Z",
        "mScrollEnabled",
        "d",
        "mScrolling",
        "<init>",
        "(Lcom/miui/calendar/view/MonthPanelContainer;Lcom/android/calendar/homepage/j1;)V",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/android/calendar/homepage/j1;

.field private b:I

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/miui/calendar/view/MonthPanelContainer;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/view/MonthPanelContainer;Lcom/android/calendar/homepage/j1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/homepage/j1;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "mView"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->e:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->a:Lcom/android/calendar/homepage/j1;

    .line 12
    .line 13
    return-void
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


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    float-to-int p2, p2

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    if-eq p1, v1, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq p1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->b:I

    .line 31
    .line 32
    sub-int/2addr p2, p1

    .line 33
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->a:Lcom/android/calendar/homepage/j1;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->F()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    const/16 p1, 0x14

    .line 42
    .line 43
    if-le p2, p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->c:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->e:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 p2, 0x3

    .line 60
    if-eq p1, p2, :cond_2

    .line 61
    .line 62
    iget-boolean p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->d:Z

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->e:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->a:Lcom/android/calendar/homepage/j1;

    .line 69
    .line 70
    invoke-static {p1, p2}, Lcom/miui/calendar/view/MonthPanelContainer;->k(Lcom/miui/calendar/view/MonthPanelContainer;Lcom/android/calendar/homepage/j1;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->e:Lcom/miui/calendar/view/MonthPanelContainer;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->t(Landroid/content/Context;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1}, Lcom/miui/calendar/util/g$v;->b(I)Lcom/miui/calendar/util/g$j;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iput-boolean v1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->d:Z

    .line 91
    .line 92
    return v1

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->a:Lcom/android/calendar/homepage/j1;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->F()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->c:Z

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-boolean p1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->d:Z

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    return v1

    .line 109
    :cond_4
    :goto_0
    return v0

    .line 110
    :cond_5
    iput p2, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->b:I

    .line 111
    .line 112
    iput-boolean v1, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->c:Z

    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/miui/calendar/view/MonthPanelContainer$b;->d:Z

    .line 115
    .line 116
    return v0
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
