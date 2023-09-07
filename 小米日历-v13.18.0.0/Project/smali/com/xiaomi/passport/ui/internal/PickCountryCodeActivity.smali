.class public Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;
.super Ls6/j;
.source "PickCountryCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$e;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/String; = "iso"

.field public static h:Ljava/lang/String; = "code"


# instance fields
.field private d:Landroid/widget/ListView;

.field private e:Lr6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr6/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private f:La7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls6/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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

.method static synthetic H(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->L()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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

.method static synthetic I(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->O(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
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

.method static synthetic J(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->d:Landroid/widget/ListView;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
    .line 6
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

.method static synthetic K()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
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

.method private L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 12
    .line 13
    invoke-virtual {v0}, La7/b;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 18
    .line 19
    :cond_0
    return-void
    .line 20
    .line 21
    .line 22
.end method

.method private N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La7/b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, La7/b;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, La7/b;->f(Z)La7/b;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 17
    .line 18
    sget v1, Ln5/g;->H:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, La7/b;->h(Ljava/lang/String;)La7/b;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->f:La7/b;

    .line 34
    .line 35
    invoke-virtual {v0}, La7/b;->show()V

    .line 36
    .line 37
    .line 38
    return-void
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
.end method

.method private O(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb7/o$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Ln5/e;->x:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ListView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->d:Landroid/widget/ListView;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lb7/o$a;

    .line 22
    .line 23
    iget-object v2, v2, Lb7/o$a;->e:Landroid/util/Pair;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lb7/o$a;

    .line 42
    .line 43
    iget-object v4, v3, Lb7/o$a;->e:Landroid/util/Pair;

    .line 44
    .line 45
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_0

    .line 54
    .line 55
    iget-object v4, v3, Lb7/o$a;->e:Landroid/util/Pair;

    .line 56
    .line 57
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_0

    .line 64
    .line 65
    iget-object v3, v3, Lb7/o$a;->e:Landroid/util/Pair;

    .line 66
    .line 67
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->d:Landroid/widget/ListView;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->d:Landroid/widget/ListView;

    .line 84
    .line 85
    new-instance v3, Ls6/a;

    .line 86
    .line 87
    new-array v4, v1, [Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, [Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {v3, p0, p1, v4}, Ls6/a;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->d:Landroid/widget/ListView;

    .line 102
    .line 103
    new-instance v2, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$c;

    .line 104
    .line 105
    invoke-direct {v2, p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$c;-><init>(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-lez p1, :cond_2

    .line 116
    .line 117
    sget p1, Ln5/e;->v:I

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    new-array v1, v1, [Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, [Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;->setSectionAlphabets([Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->d:Landroid/widget/ListView;

    .line 140
    .line 141
    new-instance v1, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$d;

    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    invoke-direct {v1, p0, p1, v2}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$d;-><init>(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;Lcom/xiaomi/passport/ui/internal/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    return-void
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


# virtual methods
.method public A(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Ln5/f;->e:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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
.end method

.method public M()V
    .locals 4

    .line 1
    invoke-static {}, Lb7/o;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lb7/g;->c(Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->O(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->N()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lr6/a;

    .line 19
    .line 20
    new-instance v1, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$e;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$e;-><init>(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$a;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$a;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$a;-><init>(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$b;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity$b;-><init>(Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, v3}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->e:Lr6/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lr6/a;->c()V

    .line 42
    .line 43
    .line 44
    return-void
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
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ls6/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Ln5/g;->w:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ls6/j;->D(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->M()V

    .line 14
    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->L()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->e:Lr6/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lr6/a;->a()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xiaomi/passport/ui/internal/PickCountryCodeActivity;->e:Lr6/a;

    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
