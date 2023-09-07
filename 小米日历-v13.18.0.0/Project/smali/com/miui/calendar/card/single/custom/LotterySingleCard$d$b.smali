.class Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;
.super Lcom/miui/calendar/view/i;
.source "LotterySingleCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/miui/calendar/view/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->b:Ljava/util/List;

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

.method private e()Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->F(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->G(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f07043e

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->H(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f060174

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x11

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->I(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v2, 0x7f07043c

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->J(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const v3, 0x7f07043d

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .line 105
    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    return-object v0
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->b:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
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
    invoke-direct {p0}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->e()Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;

    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;-><init>(Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;Landroid/view/View;)V

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
    check-cast v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;

    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;->a:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget v1, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;->b:I

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;->a:Landroid/widget/TextView;

    .line 42
    .line 43
    const v2, 0x7f0802cc

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;->a:Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->R(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const v3, 0x7f1202ff

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v1, v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;->a:Landroid/widget/TextView;

    .line 88
    .line 89
    const v2, 0x7f0802cb

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b$a;->a:Landroid/widget/TextView;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$b;->c:Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;

    .line 103
    .line 104
    iget-object v2, v2, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d;->b:Lcom/miui/calendar/card/single/custom/LotterySingleCard;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/miui/calendar/card/single/custom/LotterySingleCard;->E(Lcom/miui/calendar/card/single/custom/LotterySingleCard;)Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const v3, 0x7f1202fe

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/LotterySingleCard$d$a;->a:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-object p2
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
