.class final Lcom/android/ex/chips/b$b;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ex/chips/b;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/b;Lcom/android/ex/chips/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/ex/chips/b$b;-><init>(Lcom/android/ex/chips/b;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    check-cast p1, Lcom/android/ex/chips/r;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/ex/chips/r;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/android/ex/chips/r;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Landroid/text/util/Rfc822Token;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v0, p1, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    :goto_0
    return-object p1
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

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    .line 1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/ex/chips/b;->q()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/ex/chips/b;->d(Lcom/android/ex/chips/b;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/android/ex/chips/b;->e(Lcom/android/ex/chips/b;)Lcom/android/ex/chips/c$a;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/android/ex/chips/c;->b(Landroid/content/Context;Lcom/android/ex/chips/c$a;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/ex/chips/b;->q()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/android/ex/chips/b;->p:Z

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_1
    sget-object p1, Lcom/android/ex/chips/c;->a:[Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/ex/chips/r;->d([Ljava/lang/String;)Lcom/android/ex/chips/r;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/ex/chips/b$c;->a(Lcom/android/ex/chips/r;)Lcom/android/ex/chips/b$c;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 60
    .line 61
    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    const/4 v1, 0x0

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 66
    .line 67
    iget v4, v3, Lcom/android/ex/chips/b;->f:I

    .line 68
    .line 69
    invoke-static {v3, p1, v4, v1}, Lcom/android/ex/chips/b;->h(Lcom/android/ex/chips/b;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v7, Ljava/util/HashSet;

    .line 87
    .line 88
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    new-instance v3, Lcom/android/ex/chips/b$i;

    .line 98
    .line 99
    invoke-direct {v3, p1, v1}, Lcom/android/ex/chips/b$i;-><init>(Landroid/database/Cursor;Ljava/lang/Long;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v2, v5, v6, v7}, Lcom/android/ex/chips/b;->i(Lcom/android/ex/chips/b$i;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 107
    .line 108
    invoke-static {v1, v5, v6}, Lcom/android/ex/chips/b;->j(Lcom/android/ex/chips/b;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 113
    .line 114
    invoke-virtual {v2, v7}, Lcom/android/ex/chips/b;->H(Ljava/util/Set;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    new-instance v2, Lcom/android/ex/chips/b$c;

    .line 119
    .line 120
    move-object v3, v2

    .line 121
    move-object v4, v1

    .line 122
    invoke-direct/range {v3 .. v8}, Lcom/android/ex/chips/b$c;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    :goto_1
    if-eqz p1, :cond_5

    .line 134
    .line 135
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 136
    .line 137
    .line 138
    :cond_5
    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object v1, p1

    .line 141
    goto :goto_2

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    :goto_2
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 146
    .line 147
    .line 148
    :cond_6
    throw v0
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

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/ex/chips/b;->n:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/ex/chips/b;->q()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    check-cast p2, Lcom/android/ex/chips/b$c;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 15
    .line 16
    iget-object v1, p2, Lcom/android/ex/chips/b$c;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/android/ex/chips/b;->k(Lcom/android/ex/chips/b;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 22
    .line 23
    iget-object v1, p2, Lcom/android/ex/chips/b$c;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/android/ex/chips/b;->l(Lcom/android/ex/chips/b;Ljava/util/List;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 29
    .line 30
    iget-object v1, p2, Lcom/android/ex/chips/b$c;->d:Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/android/ex/chips/b;->m(Lcom/android/ex/chips/b;Ljava/util/Set;)Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 36
    .line 37
    iget-object v1, p2, Lcom/android/ex/chips/b$c;->a:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p2, Lcom/android/ex/chips/b$c;->e:Ljava/util/List;

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/ex/chips/b;->p(II)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 57
    .line 58
    iget-object v1, p2, Lcom/android/ex/chips/b$c;->a:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/android/ex/chips/b;->L(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p2, Lcom/android/ex/chips/b$c;->e:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 68
    .line 69
    iget v0, v0, Lcom/android/ex/chips/b;->f:I

    .line 70
    .line 71
    iget-object v1, p2, Lcom/android/ex/chips/b$c;->d:Ljava/util/Set;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sub-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/android/ex/chips/b$c;->e:Ljava/util/List;

    .line 81
    .line 82
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/ex/chips/b;->K(Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/android/ex/chips/b$b;->a:Lcom/android/ex/chips/b;

    .line 87
    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/ex/chips/b;->L(Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
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
.end method
