.class Lmiuix/preference/RadioSetPreferenceCategory$a;
.super Ljava/lang/Object;
.source "RadioSetPreferenceCategory.java"

# interfaces
.implements Lmiuix/preference/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioSetPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/RadioSetPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioSetPreferenceCategory$a;->a:Lmiuix/preference/RadioSetPreferenceCategory;

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
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$a;->a:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lmiuix/preference/RadioButtonPreference;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lmiuix/preference/RadioSetPreferenceCategory;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$a;->a:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 18
    .line 19
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->f1(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$a;->a:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 26
    .line 27
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->f1(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/g;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Lmiuix/preference/g;->a(Landroidx/preference/Preference;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
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

.method public b(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$a;->a:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 2
    .line 3
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->f1(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lmiuix/preference/RadioSetPreferenceCategory$a;->a:Lmiuix/preference/RadioSetPreferenceCategory;

    .line 10
    .line 11
    invoke-static {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->f1(Lmiuix/preference/RadioSetPreferenceCategory;)Lmiuix/preference/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lmiuix/preference/g;->b(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1
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
