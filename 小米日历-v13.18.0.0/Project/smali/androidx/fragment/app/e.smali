.class Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/e$e;,
        Landroidx/fragment/app/e$d;
    }
.end annotation


# direct methods
.method static a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/e$d;Landroidx/fragment/app/t$g;)V
    .locals 7

    .line 1
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Landroidx/core/os/e;

    .line 9
    .line 10
    invoke-direct {v5}, Landroidx/core/os/e;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/fragment/app/e$a;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/fragment/app/e$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v0}, Landroidx/core/os/e;->c(Landroidx/core/os/e$b;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p0, v5}, Landroidx/fragment/app/t$g;->b(Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Landroidx/fragment/app/e$d;->a:Landroid/view/animation/Animation;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Landroidx/fragment/app/e$e;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/fragment/app/e$d;->a:Landroid/view/animation/Animation;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1, v2}, Landroidx/fragment/app/e$e;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroidx/fragment/app/e$b;

    .line 41
    .line 42
    invoke-direct {p1, v1, p0, p2, v5}, Landroidx/fragment/app/e$b;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t$g;Landroidx/core/os/e;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/e$d;->b:Landroid/animation/Animator;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Landroidx/fragment/app/e$c;

    .line 60
    .line 61
    move-object v0, v6

    .line 62
    move-object v3, p0

    .line 63
    move-object v4, p2

    .line 64
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/e$c;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/t$g;Landroidx/core/os/e;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
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

.method private static b(Landroidx/fragment/app/Fragment;ZZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
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

.method static c(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/e$d;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/e;->b(Landroidx/fragment/app/Fragment;ZZ)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget v4, Ld0/b;->c:I

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_1
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    new-instance p0, Landroidx/fragment/app/e$d;

    .line 49
    .line 50
    invoke-direct {p0, v2}, Landroidx/fragment/app/e$d;-><init>(Landroid/view/animation/Animation;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    new-instance p0, Landroidx/fragment/app/e$d;

    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroidx/fragment/app/e$d;-><init>(Landroid/animation/Animator;)V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_3
    if-nez p3, :cond_4

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-static {v0, p2}, Landroidx/fragment/app/e;->d(IZ)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    :cond_4
    if-eqz p3, :cond_8

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "anim"

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    new-instance v0, Landroidx/fragment/app/e$d;

    .line 99
    .line 100
    invoke-direct {v0, p2}, Landroidx/fragment/app/e$d;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_5
    const/4 v1, 0x1

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception p0

    .line 107
    throw p0

    .line 108
    :catch_1
    :cond_6
    :goto_0
    if-nez v1, :cond_8

    .line 109
    .line 110
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-eqz p2, :cond_8

    .line 115
    .line 116
    new-instance v0, Landroidx/fragment/app/e$d;

    .line 117
    .line 118
    invoke-direct {v0, p2}, Landroidx/fragment/app/e$d;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :catch_2
    move-exception p2

    .line 123
    if-nez p1, :cond_7

    .line 124
    .line 125
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_8

    .line 130
    .line 131
    new-instance p1, Landroidx/fragment/app/e$d;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Landroidx/fragment/app/e$d;-><init>(Landroid/view/animation/Animation;)V

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_7
    throw p2

    .line 138
    :cond_8
    return-object v3
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

.method private static d(IZ)I
    .locals 1

    .line 1
    const/16 v0, 0x1001

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x1003

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x2002

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget p0, Ld0/a;->a:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget p0, Ld0/a;->b:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-eqz p1, :cond_3

    .line 24
    .line 25
    sget p0, Ld0/a;->c:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    sget p0, Ld0/a;->d:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_4
    if-eqz p1, :cond_5

    .line 32
    .line 33
    sget p0, Ld0/a;->e:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_5
    sget p0, Ld0/a;->f:I

    .line 37
    .line 38
    :goto_0
    return p0
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
