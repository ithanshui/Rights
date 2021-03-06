﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Rights.Entity.ViewModel
{
    /// <summary>
    /// 删除菜单request
    /// </summary>
    [Serializable]
    public class DeleteMenuRequest
    {
        /// <summary>
        /// 待删除的菜单id，多个以','分隔
        /// </summary>
        public string DeleteMenuIds { get; set; }
    }
}
