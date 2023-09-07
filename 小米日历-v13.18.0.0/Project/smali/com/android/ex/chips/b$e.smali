.class public Lcom/android/ex/chips/b$e;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/android/ex/chips/b$g;

.field private b:I

.field final synthetic c:Lcom/android/ex/chips/b;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/b;Lcom/android/ex/chips/b$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/ex/chips/b$e;->a:Lcom/android/ex/chips/b$g;

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
.method public declared-synchronized a()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/ex/chips/b$e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
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

.method public declared-synchronized b(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/ex/chips/b$e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
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

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/ex/chips/b$e;->a()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Lcom/android/ex/chips/b$e;->a:Lcom/android/ex/chips/b$g;

    .line 30
    .line 31
    iget-wide v5, v5, Lcom/android/ex/chips/b$g;->a:J

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v3, p1, v4, v5}, Lcom/android/ex/chips/b;->h(Lcom/android/ex/chips/b;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance p1, Lcom/android/ex/chips/b$i;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/ex/chips/b$e;->a:Lcom/android/ex/chips/b$g;

    .line 52
    .line 53
    iget-wide v3, v3, Lcom/android/ex/chips/b$g;->a:J

    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {p1, v1, v3}, Lcom/android/ex/chips/b$i;-><init>(Landroid/database/Cursor;Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    :cond_2
    throw p1

    .line 93
    :cond_3
    :goto_1
    return-object v0
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

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ex/chips/b;->n(Lcom/android/ex/chips/b;)Lcom/android/ex/chips/b$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/ex/chips/b$d;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/ex/chips/b;->n:Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 21
    .line 22
    if-lez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/ex/chips/b$i;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/ex/chips/b$e;->a:Lcom/android/ex/chips/b$g;

    .line 47
    .line 48
    iget-wide v2, v2, Lcom/android/ex/chips/b$g;->a:J

    .line 49
    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    cmp-long v2, v2, v4

    .line 53
    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/android/ex/chips/b;->E(Lcom/android/ex/chips/b$i;Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/android/ex/chips/b;->g(Lcom/android/ex/chips/b;)I

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/ex/chips/b;->f(Lcom/android/ex/chips/b;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-lez p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/android/ex/chips/b;->n(Lcom/android/ex/chips/b;)Lcom/android/ex/chips/b$d;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/android/ex/chips/b$d;->b()V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 86
    .line 87
    if-gtz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/android/ex/chips/b;->f(Lcom/android/ex/chips/b;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    :cond_3
    iget-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/ex/chips/b;->q()V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object p1, p0, Lcom/android/ex/chips/b$e;->c:Lcom/android/ex/chips/b;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/ex/chips/b;->r()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, p2}, Lcom/android/ex/chips/b;->L(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    return-void
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
