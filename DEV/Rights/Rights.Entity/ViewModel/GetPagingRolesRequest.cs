﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Rights.Entity.Common;

namespace Rights.Entity.ViewModel
{
    /// <summary>
    /// 获取角色列表request
    /// </summary>
    [Serializable]
    public class GetPagingRolesRequest : PagingBase
    {
        /// <summary>
        /// 机构id，0表示查询所有，且包含所有子机构
        /// </summary>
        public int OrgId { get; set; }
    }
}
