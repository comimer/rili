.class Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;
.super Ljava/lang/Object;
.source "AdSingleCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->g(Ls3/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;


# direct methods
.method constructor <init>(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 2
    .line 3
    iput p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->a:I

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
    .locals 6

    .line 1
    new-instance p1, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->M(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->G(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->H(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/miui/calendar/ad/AdSchema;->onDownloadAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 43
    .line 44
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->a:I

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    const-string v1, "ad_card_clicked_to_open_app"

    .line 49
    .line 50
    move-object v5, p1

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->I(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/miui/calendar/ad/AdSchema;->onJumpAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 69
    .line 70
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->a:I

    .line 71
    .line 72
    const/4 v3, -0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    const-string v1, "ad_card_item_clicked_start_download"

    .line 75
    .line 76
    move-object v5, p1

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 81
    .line 82
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$b;->a:I

    .line 83
    .line 84
    const/4 v3, -0x1

    .line 85
    const/4 v4, 0x0

    .line 86
    const-string v1, "card_item_clicked"

    .line 87
    .line 88
    move-object v5, p1

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    return-void
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
