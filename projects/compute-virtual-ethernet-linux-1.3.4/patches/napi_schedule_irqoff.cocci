@@
expression napi;
@@

+#if LINUX_VERSION_CODE >= KERNEL_VERSION(3,19,0) || RHEL_RELEASE_CODE >= RHEL_RELEASE_VERSION(7, 3)
napi_schedule_irqoff(napi);
+#else /* LINUX_VERSION_CODE >= KERNEL_VERSION(3,19,0) || RHEL_RELEASE_CODE >= RHEL_RELEASE_VERSION(7, 3) */
+napi_schedule(napi);
+#endif /* LINUX_VERSION_CODE >= KERNEL_VERSION(3,19,0) || RHEL_RELEASE_CODE >= RHEL_RELEASE_VERSION(7, 3) */

