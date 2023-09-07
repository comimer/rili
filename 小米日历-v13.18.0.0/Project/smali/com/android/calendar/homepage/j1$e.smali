.class public final Lcom/android/calendar/homepage/j1$e;
.super Lg9/b;
.source "WeekAgendaContainerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/j1;->O(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\n\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/android/calendar/homepage/j1$e",
        "Lg9/b;",
        "",
        "toTag",
        "",
        "Lg9/c;",
        "updateList",
        "Lkotlin/u;",
        "onUpdate",
        "onCancel",
        "onComplete",
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
.method constructor <init>(Lcom/android/calendar/homepage/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

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
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->p(Lcom/android/calendar/homepage/j1;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->r(Lcom/android/calendar/homepage/j1;Lmiuix/animation/f;)V

    .line 11
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
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->p(Lcom/android/calendar/homepage/j1;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/android/calendar/homepage/j1;->r(Lcom/android/calendar/homepage/j1;Lmiuix/animation/f;)V

    .line 11
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
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lg9/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->f(Lcom/android/calendar/homepage/j1;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p1, "weekPaddingStart"

    .line 11
    .line 12
    invoke-static {p2, p1}, Lg9/c;->b(Ljava/util/Collection;Ljava/lang/String;)Lg9/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "weekPaddingEnd"

    .line 17
    .line 18
    invoke-static {p2, v0}, Lg9/c;->b(Ljava/util/Collection;Ljava/lang/String;)Lg9/c;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lg9/c;->c()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, v0, Lcom/android/calendar/homepage/c0;->o:F

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2}, Lg9/c;->c()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p1, Lcom/android/calendar/homepage/c0;->p:F

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 57
    .line 58
    invoke-static {p2}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget p2, p2, Lcom/android/calendar/homepage/c0;->m:F

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget v0, v0, Lcom/android/calendar/homepage/c0;->o:F

    .line 71
    .line 72
    sub-float/2addr p2, v0

    .line 73
    iget-object v0, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v0, v0, Lcom/android/calendar/homepage/c0;->p:F

    .line 80
    .line 81
    sub-float/2addr p2, v0

    .line 82
    const/4 v0, 0x7

    .line 83
    int-to-float v0, v0

    .line 84
    div-float/2addr p2, v0

    .line 85
    iput p2, p1, Lcom/android/calendar/homepage/c0;->q:F

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/calendar/homepage/j1$e;->a:Lcom/android/calendar/homepage/j1;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/android/calendar/homepage/j1;->l(Lcom/android/calendar/homepage/j1;)Lcom/android/calendar/homepage/c0;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0;->b0()V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
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
.end method
