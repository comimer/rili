.class Lcom/android/ex/chips/RecipientEditTextView$h;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

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
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/ex/chips/RecipientEditTextView;->y(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 p4, 0x0

    .line 8
    invoke-virtual {p2, p4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/android/ex/chips/RecipientEditTextView;->J(Lcom/android/ex/chips/RecipientEditTextView;)Lj2/a;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/ex/chips/q;

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lcom/android/ex/chips/q;->h(I)Lcom/android/ex/chips/r;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p4, p1}, Lcom/android/ex/chips/RecipientEditTextView;->g1(Lj2/a;Lcom/android/ex/chips/r;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/ex/chips/RecipientEditTextView;->L(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Lcom/android/ex/chips/RecipientEditTextView;->M()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/android/ex/chips/RecipientEditTextView;->y(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/android/ex/chips/RecipientEditTextView;->L(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-wide/16 p3, 0x12c

    .line 59
    .line 60
    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$h;->a:Lcom/android/ex/chips/RecipientEditTextView;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/widget/TextView;->clearComposingText()V

    .line 66
    .line 67
    .line 68
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
.end method
