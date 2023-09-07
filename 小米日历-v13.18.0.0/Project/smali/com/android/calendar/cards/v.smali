.class public final synthetic Lcom/android/calendar/cards/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/account/mi/MiAccountSchema;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/calendar/cards/CardHelper$b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/account/mi/MiAccountSchema;Landroid/content/Context;Lcom/android/calendar/cards/CardHelper$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/cards/v;->a:Lcom/miui/calendar/account/mi/MiAccountSchema;

    iput-object p2, p0, Lcom/android/calendar/cards/v;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/calendar/cards/v;->c:Lcom/android/calendar/cards/CardHelper$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/cards/v;->a:Lcom/miui/calendar/account/mi/MiAccountSchema;

    iget-object v1, p0, Lcom/android/calendar/cards/v;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/cards/v;->c:Lcom/android/calendar/cards/CardHelper$b;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/cards/CardHelper;->a(Lcom/miui/calendar/account/mi/MiAccountSchema;Landroid/content/Context;Lcom/android/calendar/cards/CardHelper$b;)V

    return-void
.end method
