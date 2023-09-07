.class Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;
.super Ljava/lang/Object;
.source "CustomSingleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/CustomSingleCard;->g(Ls3/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/CustomSingleCard;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 2
    .line 3
    iput p2, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 2
    .line 3
    iget v0, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->n:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->B()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    rem-int/2addr v0, v1

    .line 21
    iput v0, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->n:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 24
    .line 25
    iget v0, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->n:I

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->B()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/2addr v0, p1

    .line 32
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->m:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-le v0, p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput v0, p1, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->n:I

    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->o(Lcom/miui/calendar/card/single/custom/CustomSingleCard;)Landroid/widget/BaseAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->b:Lcom/miui/calendar/card/single/custom/CustomSingleCard;

    .line 59
    .line 60
    iget v0, p0, Lcom/miui/calendar/card/single/custom/CustomSingleCard$a;->a:I

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    const-string v3, "card_change_clicked"

    .line 65
    .line 66
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/miui/calendar/card/single/custom/CustomSingleCard;->k(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
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
.end method
