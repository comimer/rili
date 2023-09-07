.class public Lcom/android/ex/chips/DropdownChipLayouter$f;
.super Ljava/lang/Object;
.source "DropdownChipLayouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/DropdownChipLayouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "f"
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/view/View;

.field public final i:Landroid/view/View;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/ViewGroup;

.field public final l:Landroid/widget/ImageView;

.field final synthetic m:Lcom/android/ex/chips/DropdownChipLayouter;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/DropdownChipLayouter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->m:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->t()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->a:Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->p()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->b:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->m()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->c:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->o()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->d:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->u()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->f:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->l()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->g:Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v0, Lcom/android/ex/chips/l;->b:I

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->h:Landroid/view/View;

    .line 85
    .line 86
    sget v0, Lcom/android/ex/chips/l;->a:I

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->i:Landroid/view/View;

    .line 93
    .line 94
    sget v0, Lcom/android/ex/chips/l;->d:I

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->j:Landroid/view/View;

    .line 101
    .line 102
    sget v0, Lcom/android/ex/chips/l;->c:I

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->e:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->r()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->k:Landroid/view/ViewGroup;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter;->s()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/ImageView;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/android/ex/chips/DropdownChipLayouter$f;->l:Landroid/widget/ImageView;

    .line 135
    .line 136
    return-void
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
