.class Lcom/android/ex/chips/RecipientEditTextView$v$a;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$v;->d([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/android/ex/chips/RecipientEditTextView$v;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$v;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->a:Ljava/util/ArrayList;

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
.method public a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lj2/a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/android/ex/chips/r;->g()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-static {v4, v5}, Lcom/android/ex/chips/r;->u(J)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/ex/chips/RecipientEditTextView$v;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, -0x1

    .line 58
    if-eq v4, v5, :cond_1

    .line 59
    .line 60
    invoke-interface {v2}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Lcom/android/ex/chips/r;->i()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 75
    .line 76
    invoke-interface {v2}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v3, v2}, Lcom/android/ex/chips/RecipientEditTextView$v;->a(Lcom/android/ex/chips/RecipientEditTextView$v;Lcom/android/ex/chips/r;)Lj2/a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-static {p1, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView$v;->b(Lcom/android/ex/chips/RecipientEditTextView$v;Ljava/util/List;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    return-void
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

.method public b(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lj2/a;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/android/ex/chips/r;->g()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-static {v4, v5}, Lcom/android/ex/chips/r;->u(J)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/ex/chips/RecipientEditTextView$v;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, -0x1

    .line 54
    if-eq v4, v5, :cond_0

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/ex/chips/RecipientEditTextView$v;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 59
    .line 60
    invoke-interface {v2}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/android/ex/chips/r;->i()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/ex/chips/r;

    .line 77
    .line 78
    invoke-static {v4, v2}, Lcom/android/ex/chips/RecipientEditTextView;->I(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/r;)Lcom/android/ex/chips/r;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move-object v2, v3

    .line 84
    :goto_1
    if-eqz v2, :cond_1

    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 87
    .line 88
    invoke-static {v3, v2}, Lcom/android/ex/chips/RecipientEditTextView$v;->a(Lcom/android/ex/chips/RecipientEditTextView$v;Lcom/android/ex/chips/r;)Lj2/a;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->b:Lcom/android/ex/chips/RecipientEditTextView$v;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$v$a;->a:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-static {p1, v1, v0}, Lcom/android/ex/chips/RecipientEditTextView$v;->b(Lcom/android/ex/chips/RecipientEditTextView$v;Ljava/util/List;Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    return-void
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
