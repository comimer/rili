.class Lcom/android/ex/chips/RecipientEditTextView$l;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ex/chips/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->j1()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->O(Lcom/android/ex/chips/RecipientEditTextView;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/android/ex/chips/RecipientEditTextView;->H0(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->Q(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->O(Lcom/android/ex/chips/RecipientEditTextView;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-lez v2, :cond_3

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    sget v4, Lcom/android/ex/chips/o;->a:I

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v2, v3}, Lcom/android/ex/chips/RecipientEditTextView;->Q(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/4 v3, 0x1

    .line 90
    if-ne v2, v3, :cond_4

    .line 91
    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/android/ex/chips/r;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/ex/chips/r;->n()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-ne p1, v3, :cond_4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->g(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->f(Lcom/android/ex/chips/RecipientEditTextView;)[I

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->h(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$l;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 130
    .line 131
    invoke-static {p1, v1}, Lcom/android/ex/chips/RecipientEditTextView;->P(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 132
    .line 133
    .line 134
    return-void
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
