.class Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;
.super Lcom/miui/calendar/view/i;
.source "CustomSingleCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/CustomSingleCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;
    }
.end annotation


# instance fields
.field private b:[Lcom/android/calendar/common/ModuleSchema;

.field final synthetic c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard;[Lcom/android/calendar/common/ModuleSchema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/miui/calendar/view/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->b:[Lcom/android/calendar/common/ModuleSchema;

    .line 7
    .line 8
    return-void
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

.method private e(I)Landroid/widget/TextView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->u(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->v(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f07084d

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->w(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v3, 0x7f060082

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/miui/calendar/util/w;->c()Landroid/graphics/Typeface;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    .line 60
    .line 61
    const/16 v1, 0x11

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    .line 68
    const/4 v3, -0x1

    .line 69
    const/high16 v4, 0x3f800000    # 1.0f

    .line 70
    .line 71
    invoke-direct {v1, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    const p1, 0x7f08010c

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    return-object v0
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
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->b:[Lcom/android/calendar/common/ModuleSchema;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    return v0
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

.method public b(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->e(I)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;-><init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;

    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->b:[Lcom/android/calendar/common/ModuleSchema;

    .line 23
    .line 24
    aget-object v1, v1, p1

    .line 25
    .line 26
    iget-object v2, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;->a:Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;->a:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->c:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->t(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const v3, 0x7f0600a8

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    iget-object p1, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;->a:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f080647

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f;->a()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    if-ne p1, v1, :cond_2

    .line 73
    .line 74
    iget-object p1, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;->a:Landroid/widget/TextView;

    .line 75
    .line 76
    const v0, 0x7f080649

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object p1, v0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$f$a;->a:Landroid/widget/TextView;

    .line 84
    .line 85
    const v0, 0x7f08064a

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-object p2
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
.end method
