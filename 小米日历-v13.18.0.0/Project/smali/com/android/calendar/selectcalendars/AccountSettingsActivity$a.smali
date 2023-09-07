.class final Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "AccountSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/AccountSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001c\u0010\u0008\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u001c\u0010\r\u001a\u00020\u000c2\n\u0010\n\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;",
        "Landroidx/recyclerview/widget/RecyclerView$g;",
        "Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;",
        "Lcom/android/calendar/selectcalendars/AccountSettingsActivity;",
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
        "(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)V",
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
.field final synthetic a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

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

.method public static synthetic f(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;ILcom/android/calendar/selectcalendars/AccountSettingsActivity$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->h(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;ILcom/android/calendar/selectcalendars/AccountSettingsActivity$a;Landroid/view/View;)V

    return-void
.end method

.method private static final h(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;ILcom/android/calendar/selectcalendars/AccountSettingsActivity$a;Landroid/view/View;)V
    .locals 4

    .line 1
    const-string p3, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "this$1"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    if-ge v1, p3, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;

    .line 38
    .line 39
    if-ne v1, p1, :cond_0

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move v3, v0

    .line 44
    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;->d(Z)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;->a()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string p3, "resources"

    .line 75
    .line 76
    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p2, p1}, Lcom/miui/calendar/util/x0;->m(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->b0(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Landroid/widget/ImageView;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_2

    .line 88
    .line 89
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->c0(I)V

    .line 93
    .line 94
    .line 95
    return-void
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


# virtual methods
.method public g(Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;I)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;->a()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f07005b

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$c;->b()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/x0;->r(IIZ)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;->a()Landroid/widget/ImageView;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;->a()Landroid/widget/ImageView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    .line 70
    :goto_0
    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const v2, 0x7f07005d

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    add-int/lit8 v2, v2, -0x1

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    if-ne p2, v2, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;->a()Landroid/widget/ImageView;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-virtual {p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;->a()Landroid/widget/ImageView;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 132
    .line 133
    new-instance v1, Lcom/android/calendar/selectcalendars/j;

    .line 134
    .line 135
    invoke-direct {v1, v0, p2, p0}, Lcom/android/calendar/selectcalendars/j;-><init>(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;ILcom/android/calendar/selectcalendars/AccountSettingsActivity$a;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_3
    return-void
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
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

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
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->Z(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Ljava/util/List;

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

.method public i(Landroid/view/ViewGroup;I)Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;
    .locals 4

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->a:Lcom/android/calendar/selectcalendars/AccountSettingsActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity;->a0(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;)Landroid/content/Context;

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
    const v2, 0x7f0d001c

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
    const-string v1, "from(mContext).inflate(R\u2026olor_item, parent, false)"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0, p1}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;-><init>(Lcom/android/calendar/selectcalendars/AccountSettingsActivity;Landroid/view/View;)V

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
    check-cast p1, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->g(Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/AccountSettingsActivity$a;->i(Landroid/view/ViewGroup;I)Lcom/android/calendar/selectcalendars/AccountSettingsActivity$b;

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
