.class Lh4/d$a;
.super Ljava/lang/Object;
.source "DatePickerDialogCompact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/d;-><init>(Landroid/content/Context;Lh4/d$d;IIIIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh4/d;


# direct methods
.method constructor <init>(Lh4/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/d$a;->a:Lh4/d;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 2
    .line 3
    invoke-static {p1}, Lh4/d;->p(Lh4/d;)Lh4/d$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p2, "onClick(): y:"

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lh4/d$a;->a:Lh4/d;

    .line 20
    .line 21
    invoke-static {p2}, Lh4/d;->q(Lh4/d;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, ", m:"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lh4/d$a;->a:Lh4/d;

    .line 34
    .line 35
    invoke-static {p2}, Lh4/d;->s(Lh4/d;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ", d:"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lh4/d$a;->a:Lh4/d;

    .line 48
    .line 49
    invoke-static {p2}, Lh4/d;->u(Lh4/d;)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p2, "Cal:D:DatePickerDialog"

    .line 61
    .line 62
    invoke-static {p2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 66
    .line 67
    invoke-static {p1}, Lh4/d;->w(Lh4/d;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 p2, 0x1

    .line 72
    if-ne p1, p2, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 75
    .line 76
    invoke-static {p1}, Lh4/d;->q(Lh4/d;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget-object v0, p0, Lh4/d$a;->a:Lh4/d;

    .line 81
    .line 82
    invoke-static {v0}, Lh4/d;->s(Lh4/d;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v0, p2

    .line 87
    iget-object v1, p0, Lh4/d$a;->a:Lh4/d;

    .line 88
    .line 89
    invoke-static {v1}, Lh4/d;->u(Lh4/d;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {p1, v0, v1}, Lcom/miui/calendar/util/a0;->w(III)[I

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, p0, Lh4/d$a;->a:Lh4/d;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    aget v1, p1, v1

    .line 101
    .line 102
    invoke-static {v0, v1}, Lh4/d;->r(Lh4/d;I)I

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lh4/d$a;->a:Lh4/d;

    .line 106
    .line 107
    aget v1, p1, p2

    .line 108
    .line 109
    sub-int/2addr v1, p2

    .line 110
    invoke-static {v0, v1}, Lh4/d;->t(Lh4/d;I)I

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lh4/d$a;->a:Lh4/d;

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    aget p1, p1, v0

    .line 117
    .line 118
    invoke-static {p2, p1}, Lh4/d;->v(Lh4/d;I)I

    .line 119
    .line 120
    .line 121
    :cond_0
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 122
    .line 123
    invoke-static {p1}, Lh4/d;->p(Lh4/d;)Lh4/d$d;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p0, Lh4/d$a;->a:Lh4/d;

    .line 128
    .line 129
    invoke-static {v1}, Lh4/d;->w(Lh4/d;)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 134
    .line 135
    invoke-static {p1}, Lh4/d;->y(Lh4/d;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 140
    .line 141
    invoke-static {p1}, Lh4/d;->q(Lh4/d;)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 146
    .line 147
    invoke-static {p1}, Lh4/d;->s(Lh4/d;)I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 152
    .line 153
    invoke-static {p1}, Lh4/d;->u(Lh4/d;)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    iget-object p1, p0, Lh4/d$a;->a:Lh4/d;

    .line 158
    .line 159
    invoke-static {p1}, Lh4/d;->z(Lh4/d;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-interface/range {v0 .. v7}, Lh4/d$d;->a(Lh4/d;IZIIILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_1
    return-void
    .line 167
.end method
