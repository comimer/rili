.class Lcom/android/ex/chips/RecipientEditTextView$o$a;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$o;->a([Ljava/util/ArrayList;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/android/ex/chips/RecipientEditTextView$o;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$o;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$o$a;->b:Lcom/android/ex/chips/RecipientEditTextView$o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$o$a;->a:Ljava/util/ArrayList;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 5
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
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$o$a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lj2/a;

    .line 18
    .line 19
    invoke-interface {v1}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/android/ex/chips/r;->g()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Lcom/android/ex/chips/r;->u(J)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$o$a;->b:Lcom/android/ex/chips/RecipientEditTextView$o;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/ex/chips/RecipientEditTextView$o;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, -0x1

    .line 46
    if-eq v2, v3, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$o$a;->b:Lcom/android/ex/chips/RecipientEditTextView$o;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/ex/chips/RecipientEditTextView$o;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 51
    .line 52
    invoke-interface {v1}, Lj2/a;->h()Lcom/android/ex/chips/r;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/android/ex/chips/r;->i()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->H(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/android/ex/chips/r;

    .line 73
    .line 74
    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->I(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/r;)Lcom/android/ex/chips/r;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$o$a;->b:Lcom/android/ex/chips/RecipientEditTextView$o;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/ex/chips/RecipientEditTextView$o;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->L(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Lcom/android/ex/chips/RecipientEditTextView$o$a$a;

    .line 89
    .line 90
    invoke-direct {v4, p0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$o$a$a;-><init>(Lcom/android/ex/chips/RecipientEditTextView$o$a;Lj2/a;Lcom/android/ex/chips/r;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
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
