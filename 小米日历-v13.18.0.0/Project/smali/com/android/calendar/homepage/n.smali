.class public final synthetic Lcom/android/calendar/homepage/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;

.field public final synthetic b:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/n;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    iput-object p2, p0, Lcom/android/calendar/homepage/n;->b:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/n;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    iget-object v1, p0, Lcom/android/calendar/homepage/n;->b:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity;->h0(Lcom/android/calendar/homepage/AllInOneActivity;Landroid/content/res/Resources;)V

    return-void
.end method
