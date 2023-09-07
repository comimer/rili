.class final Lcom/android/calendar/homepage/j1$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WeekAgendaContainerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J(\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J(\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/android/calendar/homepage/j1$a;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onDown",
        "onSingleTapUp",
        "e1",
        "e2",
        "",
        "velocityX",
        "velocityY",
        "onFling",
        "deltaX",
        "deltaY",
        "onScroll",
        "<init>",
        "(Lcom/android/calendar/homepage/j1;)V",
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
.field final synthetic a:Lcom/android/calendar/homepage/j1;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/j1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

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
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->u(Lcom/android/calendar/homepage/j1;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v1}, Lcom/android/calendar/homepage/j1;->v(Lcom/android/calendar/homepage/j1;F)V

    .line 16
    .line 17
    .line 18
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    const-string p3, "e1"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "e2"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 12
    .line 13
    invoke-static {p3}, Lcom/android/calendar/homepage/j1;->i(Lcom/android/calendar/homepage/j1;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    and-int/lit8 p3, p3, 0x40

    .line 18
    .line 19
    const/4 p4, 0x1

    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p3, v0}, Lcom/android/calendar/homepage/j1;->u(Lcom/android/calendar/homepage/j1;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    float-to-int p2, p2

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    float-to-int p1, p1

    .line 38
    sub-int/2addr p2, p1

    .line 39
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 40
    .line 41
    if-gez p2, :cond_0

    .line 42
    .line 43
    move v0, p4

    .line 44
    :cond_0
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->b(Lcom/android/calendar/homepage/j1;Z)Ljava/util/Calendar;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lcom/miui/calendar/util/g$a0;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Lcom/miui/calendar/util/g$a0;-><init>(Ljava/util/Calendar;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-static {p1, p2}, Lcom/android/calendar/homepage/j1;->v(Lcom/android/calendar/homepage/j1;F)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return p4
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const-string p4, "e1"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e2"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->c(Lcom/android/calendar/homepage/j1;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->h(Lcom/android/calendar/homepage/j1;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/calendar/homepage/j1;->setInitialScrollX(F)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-static {p1, p2}, Lcom/android/calendar/homepage/j1;->t(Lcom/android/calendar/homepage/j1;Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->getInitialScrollX()F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    add-float/2addr p2, p3

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/calendar/homepage/j1;->setInitialScrollX(F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->getInitialScrollX()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    float-to-int p1, p1

    .line 53
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/android/calendar/homepage/j1;->k(Lcom/android/calendar/homepage/j1;)Landroid/widget/ViewSwitcher;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string p3, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView"

    .line 64
    .line 65
    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast p2, Lcom/android/calendar/homepage/j1;

    .line 69
    .line 70
    neg-int p3, p1

    .line 71
    invoke-static {p2, p3}, Lcom/android/calendar/homepage/j1;->n(Lcom/android/calendar/homepage/j1;I)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/android/calendar/homepage/j1;->i(Lcom/android/calendar/homepage/j1;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/16 p3, 0x40

    .line 81
    .line 82
    const/4 p4, 0x1

    .line 83
    if-ne p2, p4, :cond_1

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 86
    .line 87
    invoke-static {p2, p3}, Lcom/android/calendar/homepage/j1;->u(Lcom/android/calendar/homepage/j1;I)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 91
    .line 92
    int-to-float p1, p1

    .line 93
    invoke-static {p2, p1}, Lcom/android/calendar/homepage/j1;->v(Lcom/android/calendar/homepage/j1;F)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->j(Lcom/android/calendar/homepage/j1;)F

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    neg-float p2, p2

    .line 103
    invoke-static {p1, p2}, Lcom/android/calendar/homepage/j1;->m(Lcom/android/calendar/homepage/j1;F)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 108
    .line 109
    invoke-static {p2}, Lcom/android/calendar/homepage/j1;->i(Lcom/android/calendar/homepage/j1;)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    and-int/2addr p2, p3

    .line 114
    if-eqz p2, :cond_3

    .line 115
    .line 116
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 117
    .line 118
    int-to-float p3, p1

    .line 119
    invoke-static {p2, p3}, Lcom/android/calendar/homepage/j1;->v(Lcom/android/calendar/homepage/j1;F)V

    .line 120
    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    if-lez p1, :cond_2

    .line 125
    .line 126
    move p1, p4

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    const/4 p1, -0x1

    .line 129
    :goto_0
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 130
    .line 131
    invoke-static {p2}, Lcom/android/calendar/homepage/j1;->g(Lcom/android/calendar/homepage/j1;)I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eq p1, p2, :cond_3

    .line 136
    .line 137
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 138
    .line 139
    invoke-static {p2}, Lcom/android/calendar/homepage/j1;->j(Lcom/android/calendar/homepage/j1;)F

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    neg-float p3, p3

    .line 144
    invoke-static {p2, p3}, Lcom/android/calendar/homepage/j1;->m(Lcom/android/calendar/homepage/j1;F)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 148
    .line 149
    invoke-static {p2, p1}, Lcom/android/calendar/homepage/j1;->s(Lcom/android/calendar/homepage/j1;I)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/android/calendar/homepage/j1;->invalidate()V

    .line 155
    .line 156
    .line 157
    return p4
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {v0, p1}, Lcom/android/calendar/homepage/j1;->o(Lcom/android/calendar/homepage/j1;F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$a;->a:Lcom/android/calendar/homepage/j1;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->d(Lcom/android/calendar/homepage/j1;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
    .line 22
.end method
