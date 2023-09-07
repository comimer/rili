.class Lcom/android/calendar/cards/j$a;
.super Ljava/lang/Object;
.source "AdCard.java"

# interfaces
.implements Lcom/miui/calendar/view/AdProgressTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/cards/j;->q(Landroid/content/Context;Lcom/android/calendar/cards/j$b;)Lcom/miui/calendar/view/AdProgressTextView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/cards/j$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/android/calendar/cards/j;


# direct methods
.method constructor <init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/calendar/cards/j$a;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

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
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 38
    .line 39
    invoke-static {v0, v6}, Lcom/android/calendar/cards/j;->l(Lcom/android/calendar/cards/j;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const-string v1, "card_button_clicked"

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    const/4 v4, 0x0

    .line 54
    move-object v5, v6

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const-string v1, "ad_card_clicked_to_open_app"

    .line 67
    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/miui/calendar/ad/b;->e()Lcom/miui/calendar/ad/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/calendar/cards/j$a;->b:Landroid/content/Context;

    .line 76
    .line 77
    iget-wide v2, p1, Lcom/miui/calendar/ad/AdSchema;->id:J

    .line 78
    .line 79
    iget-object p1, p1, Lcom/miui/calendar/ad/AdSchema;->tagId:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/miui/calendar/ad/b;->g(Landroid/content/Context;JLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
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
    .locals 6

    .line 1
    new-instance v5, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "type"

    .line 7
    .line 8
    const-string v0, "resume"

    .line 9
    .line 10
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 14
    .line 15
    invoke-static {p1, v5}, Lcom/android/calendar/cards/j;->l(Lcom/android/calendar/cards/j;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v1, "card_button_clicked"

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
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
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 21
    .line 22
    invoke-static {p1, v6}, Lcom/android/calendar/cards/j;->l(Lcom/android/calendar/cards/j;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-string v1, "card_button_clicked"

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v5, v6

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string v1, "ad_card_button_clicked_start_download"

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    return-void
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
    .locals 6

    .line 1
    new-instance v5, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "type"

    .line 7
    .line 8
    const-string v0, "pause"

    .line 9
    .line 10
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 14
    .line 15
    invoke-static {p1, v5}, Lcom/android/calendar/cards/j;->l(Lcom/android/calendar/cards/j;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/cards/j$a;->c:Lcom/android/calendar/cards/j;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/cards/j$a;->a:Lcom/android/calendar/cards/j$b;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v1, "card_button_clicked"

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
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
