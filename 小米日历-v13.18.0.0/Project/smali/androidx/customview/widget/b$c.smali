.class Landroidx/customview/widget/b$c;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Rect;

.field private final c:Z

.field private final d:Landroidx/customview/widget/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/b$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLandroidx/customview/widget/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/customview/widget/b$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/customview/widget/b$c;->a:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/customview/widget/b$c;->b:Landroid/graphics/Rect;

    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/customview/widget/b$c;->c:Z

    .line 19
    .line 20
    iput-object p2, p0, Landroidx/customview/widget/b$c;->d:Landroidx/customview/widget/b$a;

    .line 21
    .line 22
    return-void
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
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/b$c;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/customview/widget/b$c;->b:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/customview/widget/b$c;->d:Landroidx/customview/widget/b$a;

    .line 6
    .line 7
    invoke-interface {v2, p1, v0}, Landroidx/customview/widget/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/customview/widget/b$c;->d:Landroidx/customview/widget/b$a;

    .line 11
    .line 12
    invoke-interface {p1, p2, v1}, Landroidx/customview/widget/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-ge p1, p2, :cond_0

    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    const/4 v3, 0x1

    .line 24
    if-le p1, p2, :cond_1

    .line 25
    .line 26
    return v3

    .line 27
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    if-ge p1, p2, :cond_3

    .line 32
    .line 33
    iget-boolean p1, p0, Landroidx/customview/widget/b$c;->c:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_2
    return v2

    .line 39
    :cond_3
    if-le p1, p2, :cond_5

    .line 40
    .line 41
    iget-boolean p1, p0, Landroidx/customview/widget/b$c;->c:Z

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v2, v3

    .line 47
    :goto_0
    return v2

    .line 48
    :cond_5
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    if-ge p1, p2, :cond_6

    .line 53
    .line 54
    return v2

    .line 55
    :cond_6
    if-le p1, p2, :cond_7

    .line 56
    .line 57
    return v3

    .line 58
    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    if-ge p1, p2, :cond_9

    .line 63
    .line 64
    iget-boolean p1, p0, Landroidx/customview/widget/b$c;->c:Z

    .line 65
    .line 66
    if-eqz p1, :cond_8

    .line 67
    .line 68
    move v2, v3

    .line 69
    :cond_8
    return v2

    .line 70
    :cond_9
    if-le p1, p2, :cond_b

    .line 71
    .line 72
    iget-boolean p1, p0, Landroidx/customview/widget/b$c;->c:Z

    .line 73
    .line 74
    if-eqz p1, :cond_a

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_a
    move v2, v3

    .line 78
    :goto_1
    return v2

    .line 79
    :cond_b
    const/4 p1, 0x0

    .line 80
    return p1
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
.end method
