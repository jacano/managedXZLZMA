// <auto-generated>

using System.Runtime.InteropServices;

namespace ManagedXZ
{
    internal unsafe static class ManagedXZPInvoke
    {
#if __IOS__
        private const string DllName = "__Internal";
#else
        private const string DllName = "liblzma";
#endif
        private const CallingConvention DefaultCallingConvention = CallingConvention.Cdecl;

        [DllImport(DllName, CallingConvention = DefaultCallingConvention)]
        public static extern lzma_ret lzma_code(lzma_stream* strm, lzma_action action);

        [DllImport(DllName, CallingConvention = DefaultCallingConvention)]
        public static extern void lzma_end(lzma_stream* strm);

        [DllImport(DllName, CallingConvention = DefaultCallingConvention)]
        public static extern lzma_ret lzma_auto_decoder(lzma_stream* strm, ulong memlimit, uint flags);
    }
}