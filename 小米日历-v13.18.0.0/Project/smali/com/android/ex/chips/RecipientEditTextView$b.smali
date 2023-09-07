.class Lcom/android/ex/chips/RecipientEditTextView$b;
.super Landroid/os/AsyncTask;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->r1(Lj2/a;Landroid/widget/ListPopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lj2/a;

.field final synthetic b:Landroid/widget/ListPopupWindow;

.field final synthetic c:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lj2/a;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->a:Lj2/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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
.method protected varargs a([Ljava/lang/Void;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->a:Lj2/a;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->g0(Lj2/a;)Landroid/widget/ListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
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

.method protected b(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->l(Lcom/android/ex/chips/RecipientEditTextView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->a:Lj2/a;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->n(Lcom/android/ex/chips/RecipientEditTextView;Lj2/a;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->o(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->p(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->p(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->q(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/AdapterView$OnItemClickListener;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    invoke-static {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->s(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->b:Landroid/widget/ListPopupWindow;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->r(Lcom/android/ex/chips/RecipientEditTextView;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eq v2, v0, :cond_2

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->r(Lcom/android/ex/chips/RecipientEditTextView;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {p1, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$b;->c:Lcom/android/ex/chips/RecipientEditTextView;

    .line 116
    .line 117
    invoke-static {p1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->s(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$b;->a([Ljava/lang/Void;)Landroid/widget/ListAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/RecipientEditTextView$b;->b(Landroid/widget/ListAdapter;)V

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
