local Treesitter = {
  TSComment = { fg = C.gray },
  TSAnnotation = { fg = C.purple },
  TSAttribute = { fg = C.cyan },
  TSConstructor = { fg = C.purple },
  TSType = { fg = C.purple },
  TSTypeBuiltin = { fg = C.purple },
  TSConditional = { fg = C.blue },
  TSException = { fg = C.blue },
  TSInclude = { fg = C.blue },
  TSKeyword = { fg = C.blue },
  TSKeywordFunction = { fg = C.blue },
  TSLabel = { fg = C.blue },
  TSNamespace = { fg = C.blue },
  TSRepeat = { fg = C.blue },
  TSConstant = { fg = C.orange },
  TSConstBuiltin = { fg = C.red },
  TSFloat = { fg = C.red },
  TSNumber = { fg = C.red },
  TSBoolean = { fg = C.red },
  TSCharacter = { fg = C.light_green },
  TSError = { fg = C.error_red },
  TSFunction = { fg = C.yellow },
  TSFuncBuiltin = { fg = C.yellow },
  TSMethod = { fg = C.yellow },
  TSConstMacro = { fg = C.cyan },
  TSFuncMacro = { fg = C.yellow },
  TSVariable = { fg = C.light_blue },
  TSVariableBuiltin = { fg = C.light_blue },
  TSProperty = { fg = C.light_blue },
  TSOperator = { fg = C.gray },
  TSField = { fg = C.light_blue },
  TSParameter = { fg = C.light_blue },
  TSParameterReference = { fg = C.light_blue },
  TSSymbol = { fg = C.light_blue },
  TSText = { fg = C.fg },
  TSPunctDelimiter = { fg = C.gray },
  TSTagDelimiter = { fg = C.gray },
  TSPunctBracket = { fg = C.gray },
  TSPunctSpecial = { fg = C.gray },
  TSString = { fg = C.green },
  TSStringRegex = { fg = C.yellow_orange },
  TSStringEscape = { fg = C.yellow_orange },
  TSTag = { fg = C.blue },
  TSEmphasis = { style = "italic" },
  TSUnderline = { style = "underline" },
  TSTitle = { fg = C.blue, style = "bold" },
  TSLiteral = { fg = C.yellow_orange },
  TSURI = { fg = C.yellow_orange, style = "underline" },
  TSKeywordOperator = { fg = C.blue },
  TSStructure = { fg = C.light_blue },
  TSStrong = { fg = C.yellow_orange },
  TSQueryLinterError = { fg = C.warning_orange },
}

return Treesitter
