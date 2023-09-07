.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 2
    .line 3
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->a:Landroid/view/View$OnClickListener;

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
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->k(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 11
    .line 12
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->d(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 19
    .line 20
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->e(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/2addr v1, v2

    .line 25
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->f(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->j(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->a:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "2.0"

    .line 40
    .line 41
    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$a;->b:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    .line 48
    .line 49
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->g(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lnb/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/16 v0, 0xcc

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lnb/a;->a(I)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget v0, Lmiuix/view/f;->k:I

    .line 60
    .line 61
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
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
.end method
