.class public Lcom/miui/calendar/card/single/custom/LotterySingleCard;
.super Lcom/miui/calendar/card/single/custom/CustomSingleCard;
.source "LotterySingleCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/LotterySingleCard$LotteryItemExtraSchema;,
        Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;,
        Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;
    }
.end annotation


# instance fields
.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V
    .locals 6

    .line 1
    const/16 v2, 0x1d

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;-><init>(Landroid/content/Context;ILcom/miui/calendar/card/Card$ContainerType;Ljava/util/Calendar;Landroid/widget/BaseAdapter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const p2, 0x7f07042a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->s:I

    .line 23
    .line 24
    const p2, 0x7f0701e5

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->t:I

    .line 32
    .line 33
    const p2, 0x7f0701e3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iput p2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->u:I

    .line 41
    .line 42
    const p2, 0x7f0701e4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iput p2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->v:I

    .line 50
    .line 51
    const p2, 0x7f070770

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->w:I

    .line 59
    .line 60
    return-void
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

.method static synthetic D(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic E(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic F(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic G(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic H(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic I(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic J(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic K(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic L(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic M(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method

.method static synthetic N(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->v:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
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
.end method

.method static synthetic O(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->w:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
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
.end method

.method static synthetic P(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->t:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
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
.end method

.method static synthetic Q(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->s:I

    .line 2
    .line 3
    return p0
    .line 4
    .line 5
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
.end method

.method static synthetic R(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/card/Card;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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
.end method


# virtual methods
.method public A()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/calendar/card/single/custom/CustomSingleCard$CustomItemExtraSchema;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$LotteryItemExtraSchema;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
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
.end method

.method public B()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Ls3/a$a;I)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "Cal:D:LotterySingleCard"

    .line 6
    .line 7
    const-string p2, "bindView(): no data or holder error!"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->g(Ls3/a$a;I)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->imageAction:Lcom/android/calendar/common/ModuleSchema;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->l:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->imageAction:Lcom/android/calendar/common/ModuleSchema;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/calendar/common/ModuleSchema;->title:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->l:Landroid/widget/TextView;

    .line 44
    .line 45
    new-instance v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;

    .line 46
    .line 47
    invoke-direct {v1, p0, p2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;-><init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->l:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->l:Landroid/widget/TextView;

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->m:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 67
    .line 68
    new-instance v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {v1, p0, v2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;-><init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard;Lcom/miui/calendar/card/single/custom/LotterySingleCard$a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->m:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 78
    .line 79
    new-instance v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$b;

    .line 80
    .line 81
    invoke-direct {v1, p0, p2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$b;-><init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setOnItemClickListener(Lcom/miui/calendar/view/DynamicLinearLayout$b;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;->m:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 88
    .line 89
    new-instance p2, Lcom/miui/calendar/card/single/custom/LotterySingleCard$c;

    .line 90
    .line 91
    invoke-direct {p2, p0}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$c;-><init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/miui/calendar/view/DynamicLinearLayout;->setOnItemTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    .line 96
    .line 97
    return-void
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

.method public h(Landroid/view/View;)Ls3/a$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$e;-><init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method public i()I
    .locals 1

    const v0, 0x7f0d010c

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method
