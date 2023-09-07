.class Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;
.super Ljava/lang/Object;
.source "AdSingleCard.java"

# interfaces
.implements Lcom/miui/calendar/view/AdProgressTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->O(I)Lcom/miui/calendar/view/AdProgressTextView$a;
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
    iput-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 2
    .line 3
    iput p2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->a:I

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
.method public a(Lcom/miui/calendar/ad/AdSchema;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    const-string v1, "open"

    .line 9
    .line 10
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "package_name"

    .line 16
    .line 17
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->t:Lcom/miui/calendar/ad/AdSchema;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/miui/calendar/ad/AdSchema;->isInstalledByAdCard()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "is_installed_by_ad_card"

    .line 33
    .line 34
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 38
    .line 39
    invoke-virtual {v0, v6}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->M(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 43
    .line 44
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->a:I

    .line 45
    .line 46
    const-string v1, "card_button_clicked"

    .line 47
    .line 48
    const/4 v3, -0x1

    .line 49
    const/4 v4, 0x0

    .line 50
    move-object v5, v6

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 55
    .line 56
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->a:I

    .line 57
    .line 58
    const-string v1, "ad_card_clicked_to_open_app"

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/miui/calendar/ad/b;->e()Lcom/miui/calendar/ad/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->L(Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;)Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-wide v2, p1, Lcom/miui/calendar/ad/AdSchema;->id:J

    .line 74
    .line 75
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->tagId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/miui/calendar/ad/b;->g(Landroid/content/Context;JLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
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

.method public b(Lcom/miui/calendar/ad/AdSchema;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/miui/calendar/ad/AdSchema;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    const-string v1, "download"

    .line 9
    .line 10
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "package_name"

    .line 16
    .line 17
    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 21
    .line 22
    invoke-virtual {p1, v6}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->M(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 26
    .line 27
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->a:I

    .line 28
    .line 29
    const-string v1, "card_button_clicked"

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v5, v6

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->b:Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;

    .line 38
    .line 39
    iget v2, p0, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard$d;->a:I

    .line 40
    .line 41
    const-string v1, "ad_card_button_clicked_start_download"

    .line 42
    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/miui/calendar/card/single/custom/ad/AdSingleCard;->l(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-void
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

.method public d(Lcom/miui/calendar/ad/AdSchema;)V
    .locals 0

    return-void
.end method
