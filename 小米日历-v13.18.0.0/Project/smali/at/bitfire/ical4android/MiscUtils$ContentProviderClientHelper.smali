.class public final Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;
.super Ljava/lang/Object;
.source "MiscUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/bitfire/ical4android/MiscUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentProviderClientHelper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;",
        "",
        "Landroid/content/ContentProviderClient;",
        "Lkotlin/u;",
        "closeCompat",
        "<init>",
        "()V",
        "ical4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;

    invoke-direct {v0}, Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;-><init>()V

    sput-object v0, Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;->INSTANCE:Lat/bitfire/ical4android/MiscUtils$ContentProviderClientHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeCompat(Landroid/content/ContentProviderClient;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 7
    .line 8
    .line 9
    return-void
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
