.class final Lh2/a$b;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lh2/a;


# direct methods
.method private constructor <init>(Lh2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/a$b;->a:Lh2/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh2/a;Lh2/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lh2/a$b;-><init>(Lh2/a;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lh2/a$b;->a:Lh2/a;

    .line 2
    .line 3
    check-cast p1, Landroid/database/Cursor;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lh2/a;->x(Lh2/a;Landroid/database/Cursor;)Ljava/lang/String;

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

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11

    .line 1
    iget-object v0, p0, Lh2/a$b;->a:Lh2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lh2/a;->t(Lh2/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lh2/a$b;->a:Lh2/a;

    .line 12
    .line 13
    iget-object v3, v0, Lh2/a;->g:Landroid/content/ContentResolver;

    .line 14
    .line 15
    sget-object v4, Lh2/a$c;->a:Landroid/net/Uri;

    .line 16
    .line 17
    sget-object v5, Lh2/a$c;->b:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v3, p0, Lh2/a$b;->a:Lh2/a;

    .line 27
    .line 28
    invoke-static {v3, v1}, Lh2/a;->u(Lh2/a;Z)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v2

    .line 33
    :goto_0
    new-instance v3, Landroid/widget/Filter$FilterResults;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v2, p0, Lh2/a$b;->a:Lh2/a;

    .line 59
    .line 60
    invoke-static {v2}, Lh2/a;->v(Lh2/a;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v4, "limit"

    .line 69
    .line 70
    invoke-virtual {p1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v2, p0, Lh2/a$b;->a:Lh2/a;

    .line 75
    .line 76
    invoke-static {v2}, Lh2/a;->w(Lh2/a;)Landroid/accounts/Account;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    iget-object v2, p0, Lh2/a$b;->a:Lh2/a;

    .line 83
    .line 84
    invoke-static {v2}, Lh2/a;->w(Lh2/a;)Landroid/accounts/Account;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 89
    .line 90
    const-string v4, "name_for_primary_account"

    .line 91
    .line 92
    invoke-virtual {p1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lh2/a$b;->a:Lh2/a;

    .line 96
    .line 97
    invoke-static {v2}, Lh2/a;->w(Lh2/a;)Landroid/accounts/Account;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 102
    .line 103
    const-string v4, "type_for_primary_account"

    .line 104
    .line 105
    invoke-virtual {p1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    iget-object p1, p0, Lh2/a$b;->a:Lh2/a;

    .line 113
    .line 114
    iget-object v5, p1, Lh2/a;->g:Landroid/content/ContentResolver;

    .line 115
    .line 116
    sget-object v7, Lh2/a$f;->a:[Ljava/lang/String;

    .line 117
    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v10, 0x0

    .line 121
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 130
    .line 131
    :cond_2
    const/4 p1, 0x2

    .line 132
    new-array p1, p1, [Landroid/database/Cursor;

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    aput-object v0, p1, v4

    .line 136
    .line 137
    aput-object v2, p1, v1

    .line 138
    .line 139
    iput-object p1, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 140
    .line 141
    return-object v3
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

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .line 1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, [Landroid/database/Cursor;

    .line 6
    .line 7
    check-cast v0, [Landroid/database/Cursor;

    .line 8
    .line 9
    iget-object v1, p0, Lh2/a$b;->a:Lh2/a;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget-object v2, v0, v2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget-object v0, v0, v3

    .line 16
    .line 17
    invoke-virtual {v1, p1, v2, v0}, Lh2/a;->H(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lh2/a$b;->a:Lh2/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Li2/a;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 27
    .line 28
    return-void
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
