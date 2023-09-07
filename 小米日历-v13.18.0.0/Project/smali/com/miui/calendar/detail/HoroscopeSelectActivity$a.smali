.class final Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "HoroscopeSelectActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/detail/HoroscopeSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001c\u0010\u0008\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u001c\u0010\r\u001a\u00020\u000c2\n\u0010\n\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;",
        "Landroidx/recyclerview/widget/RecyclerView$g;",
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;",
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "i",
        "getItemCount",
        "holder",
        "position",
        "Lkotlin/u;",
        "g",
        "<init>",
        "(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)V",
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
.field final synthetic a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

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

.method public static synthetic f(Lcom/miui/calendar/detail/HoroscopeSelectActivity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->h(Lcom/miui/calendar/detail/HoroscopeSelectActivity;ILandroid/view/View;)V

    return-void
.end method

.method private static final h(Lcom/miui/calendar/detail/HoroscopeSelectActivity;ILandroid/view/View;)V
    .locals 1

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Z(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lv3/e$a;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lv3/e$a;->a:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->b0(Lcom/miui/calendar/detail/HoroscopeSelectActivity;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Y(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->a0(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "preferences_horoscope_selected"

    .line 36
    .line 37
    invoke-static {p1, v0, p2}, Lb2/a;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/miui/calendar/util/g$e0;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/miui/calendar/util/g$e0;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 49
    .line 50
    .line 51
    return-void
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
.method public g(Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;I)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Z(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lv3/e$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;->a()Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Y(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v0, Lv3/e$a;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lv3/e;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;->b()Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, v0, Lv3/e$a;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;->e()Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, v0, Lv3/e$a;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lv3/e$a;->a:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->a0(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;->c()Landroid/widget/RadioButton;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;->c()Landroid/widget/RadioButton;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0x8

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;->d()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 95
    .line 96
    new-instance v1, Lcom/miui/calendar/detail/i;

    .line 97
    .line 98
    invoke-direct {v1, v0, p2}, Lcom/miui/calendar/detail/i;-><init>(Lcom/miui/calendar/detail/HoroscopeSelectActivity;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    return-void
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

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Z(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Z(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
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
.end method

.method public i(Landroid/view/ViewGroup;I)Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;
    .locals 4

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->a:Lcom/miui/calendar/detail/HoroscopeSelectActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->Y(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f0d00d4

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "from(mContext).inflate(R\u2026list_item, parent, false)"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0, p1}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;-><init>(Lcom/miui/calendar/detail/HoroscopeSelectActivity;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-object p2
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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->g(Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;I)V

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

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;->i(Landroid/view/ViewGroup;I)Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
