.class public final Lcom/android/calendar/event/EventInfoActivity$d;
.super Lg9/b;
.source "EventInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoActivity;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/android/calendar/event/EventInfoActivity$d",
        "Lg9/b;",
        "",
        "toTag",
        "",
        "Lg9/c;",
        "updateList",
        "Lkotlin/u;",
        "onUpdate",
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
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/android/calendar/event/EventInfoActivity;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/calendar/event/EventInfoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$d;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/event/EventInfoActivity$d;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/calendar/event/EventInfoActivity$d;->c:Lcom/android/calendar/event/EventInfoActivity;

    .line 6
    .line 7
    invoke-direct {p0}, Lg9/b;-><init>()V

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


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lg9/b;->onComplete(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/miui/calendar/util/g$r0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/miui/calendar/util/g$r0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$d;->c:Lcom/android/calendar/event/EventInfoActivity;

    .line 17
    .line 18
    invoke-virtual {p1}, Lmiuix/appcompat/app/m;->finish()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$d;->c:Lcom/android/calendar/event/EventInfoActivity;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 25
    .line 26
    .line 27
    return-void
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
    .line 65
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5
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
    invoke-super {p0, p1, p2}, Lg9/b;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_6

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/EventInfoActivity$d;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity$d;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_6

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lg9/c;

    .line 25
    .line 26
    iget-object v2, v1, Lg9/c;->a:Lmiuix/animation/property/b;

    .line 27
    .line 28
    sget-object v3, Lmiuix/animation/property/h;->m:Lmiuix/animation/property/h;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    invoke-virtual {v1}, Lg9/c;->d()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v2, v1

    .line 44
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    sget-object v3, Lmiuix/animation/property/h;->l:Lmiuix/animation/property/h;

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    invoke-virtual {v1}, Lg9/c;->d()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v2, v1

    .line 62
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    sget-object v3, Lmiuix/animation/property/h;->b:Lmiuix/animation/property/h;

    .line 66
    .line 67
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1}, Lg9/c;->d()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    sub-int/2addr v1, v2

    .line 80
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    sget-object v3, Lmiuix/animation/property/h;->a:Lmiuix/animation/property/h;

    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1}, Lg9/c;->d()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    sub-int/2addr v1, v2

    .line 99
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-le v1, v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    if-gez v1, :cond_5

    .line 119
    .line 120
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string p2, "onUpdate2: "

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/android/calendar/event/EventInfoActivity$d;->a:Landroid/graphics/Rect;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p2, ", "

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/android/calendar/event/EventInfoActivity$d;->b:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string p2, "Cal:D:EventInfoActivity"

    .line 160
    .line 161
    invoke-static {p2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void
    .line 165
    .line 166
    .line 167
.end method
